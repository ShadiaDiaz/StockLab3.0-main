import { BrowserModule } from '@angular/platform-browser';
import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from "@angular/core";
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';


import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { CounterComponent } from './counter/counter.component';
import { FetchDataComponent } from './fetch-data/fetch-data.component';
import { PersonaSolicitudInsumosComponent } from './stocklab/persona-solicitud-insumos/persona-solicitud-insumos.component';
import { GestionSolicitudesComponent } from './stocklab/gestion-solicitudes/gestion-solicitudes.component';
import { RegistroInsumosComponent } from './stocklab/registro-insumos/registro-insumos.component';
import { ConsultaInsumosComponent } from './stocklab/consulta-insumos/consulta-insumos.component';
import { AppRoutingModule } from './app-routing.module';
import { FooterComponent } from './footer/footer.component';
import { InicioSesionComponent } from './inicio-sesion/inicio-sesion.component';
import { LoginService } from './services/login.service';
import { SidebarComponent } from './sidebar/sidebar.component';
import { PerfilComponent } from './perfil/perfil.component';
import { NotificacionesComponent } from './notificaciones/notificaciones.component';
import { RegistroDocentesComponent } from './stocklab/registro-docentes/registro-docentes.component';
import { SolicitudIndividualComponent } from './stocklab/solicitud-individual/solicitud-individual.component';
import { ReportesLaboratorioComponent } from './stocklab/reportes-laboratorio/reportes-laboratorio.component';
import { RegistroAsignaturasComponent } from './stocklab/registro-asignaturas/registro-asignaturas.component';
import { ConsultaAsignaturasComponent } from './stocklab/consulta-asignaturas/consulta-asignaturas.component';
import { ModalComponent } from './@base/modal/modal.component';
import { JwtInterceptor } from './services/jwt.interceptor';
import { AsignaturaService } from './services/asignatura.service';
import { FiltroAsignaturaPipe } from './pipe/filtro-asignatura.pipe';
import { FiltroInsumoPipe } from './pipe/filtro-insumo.pipe';
import { ConsultaSolicitudesComponent } from './stocklab/consulta-solicitudes/consulta-solicitudes.component';
import { ActualizarCantidadInsumoModalComponent } from './@base/modal/actualizar-cantidad-insumo-modal/actualizar-cantidad-insumo-modal.component';
import { PeriodoRegistroComponent } from './stocklab/periodo-registro/periodo-registro.component';



@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,
    CounterComponent,
    FetchDataComponent,
    PersonaSolicitudInsumosComponent,
    GestionSolicitudesComponent,
    RegistroInsumosComponent,
    ConsultaInsumosComponent,
    FooterComponent,
    InicioSesionComponent,
    SidebarComponent,
    PerfilComponent,
    NotificacionesComponent,
    RegistroDocentesComponent,
    SolicitudIndividualComponent,
    ReportesLaboratorioComponent,
    RegistroAsignaturasComponent,
    ConsultaAsignaturasComponent,
    ModalComponent,
    FiltroAsignaturaPipe,
    FiltroInsumoPipe,
    ConsultaSolicitudesComponent,
    ActualizarCantidadInsumoModalComponent,
    PeriodoRegistroComponent,
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    NgbModule,
    RouterModule.forRoot([
      { path: '', component: HomeComponent, pathMatch: 'full' },
      { path: 'counter', component: CounterComponent },
      { path: 'fetch-data', component: FetchDataComponent },
    ]),
    AppRoutingModule
  ],
  providers: [LoginService, AsignaturaService],
  schemas: [CUSTOM_ELEMENTS_SCHEMA],
  bootstrap: [AppComponent],
  exports: [NavMenuComponent]
})
export class AppModule { }
