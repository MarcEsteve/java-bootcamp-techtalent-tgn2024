import { bootstrapApplication } from '@angular/platform-browser';
import { appConfig } from './app/app.config';
import { AppComponent } from './app/app.component';
import { provideHttpClient, withFetch } from '@angular/common/http';
import { EmployeeListComponent } from './app/pages/employee-list/employee-list.component';

bootstrapApplication(AppComponent, appConfig).catch((err) =>
  console.error(err)
);

bootstrapApplication(EmployeeListComponent, {
  providers: [provideHttpClient()],
});
