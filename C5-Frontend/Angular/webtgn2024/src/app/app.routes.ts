import { Routes } from '@angular/router';
import { AboutComponent } from './pages/about/about.component';
import { PortfolioComponent } from './pages/portfolio/portfolio.component';
import { TermsComponent } from './pages/terms/terms.component';
import { Pagina404Component } from './pages/pagina-404/pagina-404.component';
import { InterpolationComponent } from './databinding/interpolation/interpolation.component';
import { PropertyBindingComponent } from './databinding/property-binding/property-binding.component';
import { EventBindingComponent } from './databinding/event-binding/event-binding.component';
import { TwoWayBindingComponent } from './databinding/two-ways-binding/two-ways-binding.component';
import { DOMAccessComponent } from './databinding/dom-access-binding/dom-access-binding.component';
import { PipesComponent } from './pipes/pipes.component';
import { NgIfComponent } from './directives/ng-if/ng-if.component';
import { NgSwitchComponent } from './directives/ng-switch/ng-switch.component';
import { NgForComponent } from './directives/ng-for/ng-for.component';
import { NgClassComponent } from './directives/ng-class/ng-class.component';
import { NgStyleComponent } from './directives/ng-style/ng-style.component';
import { TablaClientesComponent } from './clientes/tabla-clientes/tabla-clientes.component';
import { EmployeeListComponent } from './pages/employee-list/employee-list.component';
import { CookiesComponent } from './pages/cookies/cookies.component';

export const routes: Routes = [
    {path: '', component: AboutComponent},
    {path: 'portfolio', component: PortfolioComponent},
    {path: 'clientes', component: TablaClientesComponent},
    {path: 'interpol', component: InterpolationComponent},
    {path: 'property', component: PropertyBindingComponent},
    {path: 'event', component: EventBindingComponent},
    {path: 'twow', component: TwoWayBindingComponent},
    {path: 'dom', component: DOMAccessComponent},
    {path: 'pipes', component: PipesComponent},
    {path: 'if', component: NgIfComponent},
    {path: 'switch', component: NgSwitchComponent},
    {path: 'for', component: NgForComponent},
    {path: 'class', component: NgClassComponent},
    {path: 'style', component: NgStyleComponent},
    {path: 'terminos', component: TermsComponent},
    {path: 'otroabout', component: EmployeeListComponent},
    {path: 'cookies', component: CookiesComponent},
    {path: 'about', redirectTo: '', pathMatch: 'full'},
    {path: '**', component: Pagina404Component}
];