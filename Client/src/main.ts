import { bootstrapApplication } from '@angular/platform-browser';
import { provideRouter } from '@angular/router'; 
import { importProvidersFrom } from '@angular/core'; // ✅ เพิ่ม importProvidersFrom
import { HttpClientModule } from '@angular/common/http'; // ✅ นำเข้า HttpClientModule
import { routes } from './app/app.routes'; 
import { AppComponent } from './app/app.component';

// Bootstrap แอปพลิเคชัน
bootstrapApplication(AppComponent, {
  providers: [
    provideRouter(routes), 
    importProvidersFrom(HttpClientModule) // ✅ เพิ่ม HttpClientModule
  ]
}).catch(err => console.error(err));
