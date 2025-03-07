import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';


@Component({
  selector: 'app-root',
  standalone: true,
  template: '<router-outlet></router-outlet>',  // ใช้ router-outlet เพื่อแสดง Component ตามเส้นทาง
  styleUrls: ['./app.component.css'],
  imports: [RouterOutlet] 
})
export class AppComponent {
  title = 'team';
}