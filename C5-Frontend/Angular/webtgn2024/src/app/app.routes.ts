import { Routes } from '@angular/router';
import { AboutComponent } from './pages/about/about.component';
import { PortfolioComponent } from './pages/portfolio/portfolio.component';
import { TermsComponent } from './pages/terms/terms.component';
import { Pagina404Component } from './pages/pagina-404/pagina-404.component';
import { InterpolationComponent } from './databinding/interpolation/interpolation.component';

export const routes: Routes = [
    {path: '', component: AboutComponent},
    {path: 'portfolio', component: PortfolioComponent},
    {path: 'interpol', component: InterpolationComponent},
    {path: 'terminos', component: TermsComponent},
    {path: 'about', redirectTo: '', pathMatch: 'full'},
    {path: '**', component: Pagina404Component}
];