import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';

//import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
//import { MyTestPageComponent } from './my-test-page/my-test-page.component';
//import { EmployeeListComponent } from './employee-list/employee-list.component';
//import { EmployeeDetailsComponent } from './employee-details/employee-details.component';
import { EmployeeService } from './employee.service';
import { provideHttpClient } from '@angular/common/http';
import { EmployeeListComponent } from './employee-list.component';

@NgModule({
  declarations: [
    AppComponent,
    //MyTestPageComponent,
    EmployeeListComponent,
    //EmployeeDetailsComponent
  ],
  imports: [
    BrowserModule,
    //AppRoutingModule,
    FormsModule,
  ],
  providers: [EmployeeService, provideHttpClient()],
  bootstrap: [AppComponent],
})
export class AppModule {}
