import { Routes } from '@angular/router';
import { AboutComponent } from './pages/about/about.component';
import { PortfolioComponent } from './pages/portfolio/portfolio.component';
import { TermsComponent } from './pages/terms/terms.component';

export const routes: Routes = [
    {path: 'about', component: AboutComponent},
    {path: 'portfolio', component: PortfolioComponent},
    {path: 'terminos', component: TermsComponent},
    {path: '', redirectTo: 'portfolio', pathMatch: 'full'},
    {path: '**', component: AboutComponent}
];