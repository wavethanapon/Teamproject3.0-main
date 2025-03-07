const express = require('express')
const bodyparser = require('body-parser')
const mysql = require('mysql2/promise')
const path = require('path')
const cors = require('cors');
const app = express()
app.use(express.json());
const { google } = require("googleapis")
const axios = require("axios");
const port = 8000
const bcypt = require("bcryptjs")
const jwt = require("jsonwebtoken")

app.use(cors({
    origin: 'http://localhost:4200'
}));

app.get('/hello_world', (req, res) => {
    res.send('hello world')
})

app.post("/login", async (req, res) => {
    try {
      const data = await mysql.createConnection({
        host: "db",
        user: "root",
        password: "karma",
        database: "Karma",
        port: "3306",
      });
  
      const { email, password } = req.body;
  
      
      if (!email || !password) {
        return res.status(400).json({ error: "Email and password are required" });
      }
  
      let sql;
      let results;
      let payload = null;
  
      
      sql = "SELECT * FROM teachers WHERE email = ?";
      [results] = await data.execute(sql, [email]);
  
      if (results.length > 0) {
        payload = {
          email: results[0].email,
          full_name: results[0].full_name,
          role: "teachers",
        };
      } else {
        sql = `SELECT students.student_id, students.full_name, students.email, students.passwords, 
                      years.year_name 
               FROM students 
               INNER JOIN years ON students.years = years.id 
               WHERE students.email = ?`;
        [results] = await data.execute(sql, [email]);
  
        if (results.length > 0) {
          payload = {
            email: results[0].email,
            full_name: results[0].full_name,
            student_id: results[0].student_id,
            years: results[0].year_name,
            role: "student",
          };
        }
      }
  
     
      if (!payload) {
        await data.end(); 
        return res.status(404).json({ message: "User not found" });
      }
  
      const matched = await bcypt.compare(password, results[0].passwords);
      if (!matched) {
        await data.end();
        return res.status(401).json({ message: "Password not matched" });
      }
  
     
      jwt.sign(payload, "1234d", { expiresIn: "2h" }, async (err, token) => {
        await data.end();
        if (err) {
          return res.status(403).json({ message: err.message });
        }
        res.status(200).json({ token, payload });
      });
  
    } catch (error) {
      console.error("Error fetching users:", error.message);
      res.status(500).json({ error: "Error fetching users" });
    }
  });
// app.post('/login', async (req, res) => {
//     try {
//         const data = await mysql.createConnection({
//             host: 'db',
//             user: 'root',
//             password: 'karma',
//             database: 'Karma',
//             port: '3306'
//         })
//         const { email,password } = req.body; // Extract email from request body
//         if (!email) {
//             return res.status(400).json({ error: "Email is required" })
//         }

//         const sql ="SELECT students.student_id , students.full_name ,students.email ,students.passwords, years.year_name FROM students INNER JOIN years ON students.years = years.id WHERE students.email = ?"
//         const [results] = await data.query(sql, [email]);
//         console.log(results[0])
//         if (results.length === 0) {
//             return res.status(404).json({ error: "User not found" })
//         }
//         const matched = await bcypt.compare(password,results[0].passwords)
//         if(!matched){
//             return res.json({message:"password not matched"})

//         }
//         let role;


//         const payload = {
//             email:results[0].email,
//             full_name: results[0].full_name,
//             student_id: results[0].student_id,
//             years:results[0].year_name,
//             role:"student"


//           };

//           await jwt.sign(
//             payload,
//             "1234d",
//             { expiresIn: "2h" },
//             (err, token) => {
//               if (err) {
//                 return res.status(403).json({ message: err.message });
//               }
//               res.status(200).json({ token, payload });
//             }
//         )
//     } catch (error) {
//         console.error('Error fetching users:', error.message);
//         res.status(500).json({ error: 'Error fetching users' })
//     }
// })

app.get('/showscore', async (req, res) => {
    try {
        const data = await mysql.createConnection({
            host: 'db',
            user: 'root',
            password: 'karma',
            database: 'Karma',
            port: '3306'
        })
        const results = await data.query('SELECT students.student_id,full_name ,total_points FROM students JOIN student_points ON students.student_id = student_points.student_id;')
        res.json(results[0])
    } catch (error) {
        console.error('Error fetching users:', error.message)
        res.status(500).json({ error: 'Error fetching users' })
    }
})

app.get('/showscorefull', async (req, res) => {
    try {
        const data = await mysql.createConnection({
            host: 'db',
            user: 'root',
            password: 'karma',
            database: 'Karma',
            port: '3306'
        })
        const results = await data.query('SELECT s.student_id, full_name, nickname, year_name, email, phone, total_points FROM students AS s JOIN student_points AS sp ON s.student_id = sp.student_id JOIN years AS y ON y.id = s.years ORDER BY s.student_id;')
        res.json(results[0])
    } catch (error) {
        console.error('Error fetching users:', error.message)
        res.status(500).json({ error: 'Error fetching users' })
    }
})

app.post('/loginadmin', async (req, res) => {
    try {
        const data = await mysql.createConnection({
            host: 'db',
            user: 'root',
            password: 'karma',
            database: 'Karma',
            port: '3306'
        })
        const { email } = req.body; // Extract email from request body
        if (!email) {
            return res.status(400).json({ error: "Email is required" })
        }

        const sql = 'SELECT email, password FROM teachers WHERE email = ?'
        const [results] = await data.query(sql, [email]);

        if (results.length === 0) {
            return res.status(404).json({ error: "User not found" })
        }

        res.json(results[0])
    } catch (error) {
        console.error('Error fetching users:', error.message);
        res.status(500).json({ error: 'Error fetching users' })
    }
})

// api google
app.get("/form", async (req, res) => {
    try {
        const auth = new google.auth.GoogleAuth({
            keyFile: "credential.json",
            scopes: "https://www.googleapis.com/auth/spreadsheets",
        });

        const client = await auth.getClient();
        const googlesheet = google.sheets({ version: "v4", auth: client });
        const spreadsheetId = "1rAc0wxCOTY4wIYaO6Ch8nR1rveQUWSms4WGNN2c-wGw";

        const getRows = await googlesheet.spreadsheets.values.get({
            auth,
            spreadsheetId,
            range: "Form Responses 1!D:F",
        });


        const rows = getRows.data.values;
        if (!rows || rows.length < 2) {
            return res.json([]); // Return empty array if there's no data
        }

        // Assuming columns D, E, F are mapped to 'Student ID', 'ประเภทกิจกรรม', and 'ชื่อกิจกรรม'
        const data = rows.slice(1).map(row => {
            return {
                "Student ID": row[0] || "",
                "ประเภทกิจกรรม": row[1] || "",
                "ชื่อกิจกรรม": row[2] || ""
            };
        });

        res.json(data);

    } catch (error) {
        console.error(error);
        res.status(500).send("Error fetching data from Google Sheets");
    }
});


app.post("/save", async (req, res) => {
    const data = await mysql.createConnection({
        host: 'db',
        user: 'root',
        password: 'karma',
        database: 'Karma',
        port: '3306'
    })
    const { student_id, activity_type_id, activity_name } = req.body;

    if (!student_id || !activity_type_id || !activity_name) {
        return res.status(400).json({ error: "Missing required fields" });
    }

    const sql = "INSERT INTO participation (student_id, activity_type_id, activity_name) VALUES (?, ?, ?)";
    const values = [student_id, activity_type_id, activity_name];

    data.query(sql, values, (err, result) => {
        if (err) {
            console.error("Error inserting data:", err);
            return res.status(500).json({ error: "Database error" });
        }
        res.json({ message: "Data inserted successfully", id: result.insertId });
    });
});

app.listen(port, (req, res) => {
    console.log('http server run at ' + port)
})

