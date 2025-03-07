import { Component } from '@angular/core';
import { NavbarComponent } from "../navbar/navbar.component";
import { FooterComponent } from "../footer/footer.component";
import { AuthService } from '../store/auth.service'
import { Router } from '@angular/router';

@Component({
  selector: 'app-studen2',
  imports: [NavbarComponent, FooterComponent], // ✅ Import NavbarComponent และ FooterComponent
  standalone: true,
  templateUrl: './studen2.component.html',
  styleUrls: ['./studen2.component.css'] // ✅ แก้ไขจาก styleUrl เป็น styleUrls
})
export class Studen2Component {
  isLoggedIn = false;
  student_id: string | null = null;
  full_name: string | null = null;
  year_name: string | null = null;
  userRole: string | null = null;

  constructor(private authService: AuthService, private router: Router) {}
  
  ngOnInit() {
    if (!this.authService.isLoggedIn()) {
      this.router.navigate(['/login']);
      return;
    }
    this.userRole = this.authService.getUserRole();
  
    if (this.userRole !== 'student') {
      this.router.navigate(['table']);
      return;
    }
    this.authService.loginState$.subscribe(state => {
      this.isLoggedIn = state.token !== null;
      this.student_id = state.payload?.student_id || null;
      this.full_name = state.payload?.full_name || null;
      this.year_name = state.payload?.years || null;
    });
  }


}
