import { Routes } from '@angular/router';
import { dateTimestampProvider } from 'rxjs/internal/scheduler/dateTimestampProvider';
import { DataTableComponent } from './data-table/data-table.component';
import { LoginComponent } from './login/login.component';
import { AppComponent } from './app.component';
import { HomepageComponent } from './homepage/homepage.component';
import { Studen2Component } from './studen2/studen2.component';

export const routes: Routes = [
    {path:'table',component:DataTableComponent},
    {path:'login',component:LoginComponent},
    // {path: 'homepage', redirectTo: '/login', pathMatch: 'full' },
    {path: '',component:HomepageComponent},
    {path: 'student_score',component:Studen2Component}
];

