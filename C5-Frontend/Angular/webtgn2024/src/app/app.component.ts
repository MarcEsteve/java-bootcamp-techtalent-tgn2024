import { Component, NgModule } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { HeaderComponent } from './shared/header/header.component';
import { FooterComponent } from './shared/footer/footer.component';
// import { AboutComponent } from './pages/about/about.component';
// import { TermsComponent } from './pages/terms/terms.component';
// import { PortfolioComponent } from './pages/portfolio/portfolio.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [
    RouterOutlet,
    HeaderComponent,
    FooterComponent
    // AboutComponent,
    // TermsComponent,
    // PortfolioComponent,
  ],
  templateUrl: './app.component.html',
  styles: '',
})

export class AppComponent {
  title = 'Web App Angular TGN 2024';
}
