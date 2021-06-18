import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Routes, RouterModule } from '@angular/router';
import { ConsultaInsumosComponent } from './stocklab/consulta-insumos/consulta-insumos.component';
import { GestionSolicitudesComponent } from './stocklab/gestion-solicitudes/gestion-solicitudes.component';
import { RegistroInsumosComponent } from './stocklab/registro-insumos/registro-insumos.component';

import { HomeComponent } from './home/home.component';
import {RegistroDocentesComponent } from './stocklab/registro-docentes/registro-docentes.component';
import {RegistroAsignaturasComponent } from './stocklab/registro-asignaturas/registro-asignaturas.component';
import { InicioSesionComponent } from './inicio-sesion/inicio-sesion.component';
import {ConsultaAsignaturasComponent} from './stocklab/consulta-asignaturas/consulta-asignaturas.component';
import { SolicitudIndividualComponent } from './stocklab/solicitud-individual/solicitud-individual.component';
import {ConsultaSolicitudesComponent} from './stocklab/consulta-solicitudes/consulta-solicitudes.component';
import { PerfilComponent } from './perfil/perfil.component';
import { PeriodoRegistroComponent } from './stocklab/periodo-registro/periodo-registro.component';
import { AuthGuard } from './services/guard/auth.guard';
import { ChatComponent } from './chat/chat.component';
import { ChatClienteComponent } from './chat-cliente/chat-cliente.component';
import {ReportesInsumosComponent} from './stocklab/reportesLaboratorio/reportes-insumos/reportes-insumos.component';
import {ReportesUsuarioComponent} from './stocklab/reportesLaboratorio/reportes-usuario/reportes-usuario.component';
import {ReportesSolicitudComponent} from './stocklab/reportesLaboratorio/reportes-solicitud/reportes-solicitud.component';
import {ReporteStockInsumosComponent} from './stocklab/reportesLaboratorio/reporte-stock-insumos/reporte-stock-insumos.component';
import {ReporteStockMinimoComponent} from './stocklab/reportesLaboratorio/reporte-stock-minimo/reporte-stock-minimo.component';

const routes: Routes = [
  { path: 'ConsultaInsumos', component: ConsultaInsumosComponent, canActivate: [AuthGuard] },
  { path: 'GestionSolicitudes', component: GestionSolicitudesComponent, canActivate: [AuthGuard] },
  { path: 'RegistroInsumos', component: RegistroInsumosComponent, canActivate: [AuthGuard] },
  { path: 'Home', component: HomeComponent, canActivate: [AuthGuard] },
  { path: 'InicioSesion', component: InicioSesionComponent },
  { path: 'RegistroDocentes', component: RegistroDocentesComponent, canActivate: [AuthGuard] },
  { path: 'RegistroAsignaturas', component: RegistroAsignaturasComponent, canActivate: [AuthGuard] },
  { path: 'ConsultaAsignaturas', component: ConsultaAsignaturasComponent, canActivate: [AuthGuard] },
  { path: 'SolicitudIndividual/:numero', component: SolicitudIndividualComponent, canActivate: [AuthGuard] },
  { path: 'ConsultaSolicitudes', component: ConsultaSolicitudesComponent, canActivate: [AuthGuard]},
  { path: 'perfil', component: PerfilComponent, canActivate: [AuthGuard]},
  { path: 'periodoRegistro', component: PeriodoRegistroComponent, canActivate: [AuthGuard]},
  { path: 'chat', component: ChatComponent, canActivate: [AuthGuard]},
  { path: 'chatUsuarios', component: ChatClienteComponent, canActivate: [AuthGuard]},
  { path: 'ReportesInsumos', component: ReportesInsumosComponent, canActivate: [AuthGuard]},
  { path: 'ReportesUsuario', component: ReportesUsuarioComponent, canActivate: [AuthGuard]},
  { path: 'ReporteAsignaturas', component: ReportesSolicitudComponent, canActivate: [AuthGuard]},
  { path: 'ReportesStock', component: ReporteStockInsumosComponent, canActivate: [AuthGuard]},
  { path: 'ReporteStockMinimo', component: ReporteStockMinimoComponent, canActivate: [AuthGuard]}
];
@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
