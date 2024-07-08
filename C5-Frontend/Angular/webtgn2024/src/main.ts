import { bootstrapApplication } from '@angular/platform-browser';
import { appConfig } from './app/app.config';
import { AppComponent } from './app/app.component';
import { provideHttpClient } from '@angular/common/http';
import { EmployeeListComponent } from './app/pages/employee-list/employee-list.component';
// import { CookieService } from 'ngx-cookie-service';
// import { CookiesComponent } from './app/pages/cookies/cookies.component';

bootstrapApplication(AppComponent, appConfig).catch((err) =>
  console.error(err)
);

bootstrapApplication(EmployeeListComponent, {
  providers: [provideHttpClient()],
});
