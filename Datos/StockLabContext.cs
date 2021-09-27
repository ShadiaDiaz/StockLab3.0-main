using System;
using System.Collections.Generic;
using Entity;
using Microsoft.EntityFrameworkCore;

namespace Datos
{
    public class StockLabContext : DbContext
    {
        public StockLabContext(DbContextOptions options):base(options)
        {
            
        } 
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Asignaturas> Asignaturas { get; set; }
        public DbSet<Insumo> Insumos { get; set; }
        public DbSet<Persona> Personas { get; set; }
        public DbSet<Solicitud> Solicitudes { get; set; }
        public DbSet<PeriodoAcademico> PeriodosAcademicos { get; set; }
        public DbSet<Chat> Chats { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<RolPrograma> RolProgramas { get; set; }
        public DbSet<ModuloMenu> Modulos { get; set; }
        public DbSet<ProgramasModulo> Programas { get; set; }
    commit
        
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            ConfiguracionesContext(modelBuilder);


            var Roles = InsertarDatosIniciales(out var periodos, out var Modulos, out var programasModulos, out var rolProgramasList);


            modelBuilder.Entity<ModuloMenu>()
                .HasData(Modulos);

            modelBuilder.Entity<ProgramasModulo>()
                .HasData(programasModulos);
            
            
            
            modelBuilder.Entity<Role>()
            .HasData(Roles);
            
            modelBuilder.Entity<PeriodoAcademico>()
            .HasData(periodos);

            modelBuilder.Entity<RolPrograma>()
                .HasData(rolProgramasList);
        }

        private static List<Role> InsertarDatosIniciales(out List<PeriodoAcademico> periodos, out List<ModuloMenu> Modulos, out List<ProgramasModulo> programasModulos,
            out List<RolPrograma> rolProgramasList)
        {
            List<Role> Roles = new List<Role>();
            Roles.Add(new Role("Docente", 1));
            Roles.Add(new Role("Monitor", 2));
            Roles.Add(new Role("Coordinador", 3));
            Roles.Add(new Role("Administrador", 4));


            periodos = new List<PeriodoAcademico>();
            periodos.Add(new PeriodoAcademico() {Codigo = "1", Periodo = "2021-1", Corte = 1});

            Modulos = new List<ModuloMenu>();
            Modulos.Add(new ModuloMenu() {Id = 1, Nombre = "Periodo Academico"});
            Modulos.Add(new ModuloMenu() {Id = 2, Nombre = "Insumos"});
            Modulos.Add(new ModuloMenu() {Id = 3, Nombre = "Usuarios"});
            Modulos.Add(new ModuloMenu() {Id = 4, Nombre = "Asignaturas"});
            Modulos.Add(new ModuloMenu() {Id = 5, Nombre = "Solicitudes"});
            Modulos.Add(new ModuloMenu() {Id = 6, Nombre = "Reportes"});

            programasModulos = new List<ProgramasModulo>();
            programasModulos.Add(new ProgramasModulo()
                {Id = 1, Nombre = "Registro Periodo", Ruta = "/periodoRegistro", IdModulo = 1});
            programasModulos.Add(new ProgramasModulo()
                {Id = 2, Nombre = "Registro Insumos", Ruta = "/RegistroInsumos", IdModulo = 2});
            programasModulos.Add(new ProgramasModulo()
                {Id = 3, Nombre = "Consultar Insumos", Ruta = "/ConsultaInsumos", IdModulo = 2});
            programasModulos.Add(new ProgramasModulo()
                {Id = 4, Nombre = "Registrar Usuario", Ruta = "/RegistroDocentes", IdModulo = 3});
            programasModulos.Add(new ProgramasModulo()
                {Id = 5, Nombre = "Registro Asignaturas", Ruta = "/RegistroAsignaturas", IdModulo = 4});
            programasModulos.Add(new ProgramasModulo()
                {Id = 6, Nombre = "Consultar Asignaturas", Ruta = "/ConsultaAsignaturas", IdModulo = 4});
            programasModulos.Add(new ProgramasModulo()
                {Id = 7, Nombre = "Solicitar Pedido", Ruta = "/GestionSolicitudes", IdModulo = 5});
            programasModulos.Add(new ProgramasModulo()
                {Id = 8, Nombre = "Consultar Solicitudes", Ruta = "/ConsultaSolicitudes", IdModulo = 5});
            programasModulos.Add(new ProgramasModulo()
                {Id = 9, Nombre = "Reporte Insumos Usados", Ruta = "/ReportesInsumos", IdModulo = 6});
            programasModulos.Add(new ProgramasModulo()
                {Id = 10, Nombre = "Reporte Usuario Pedidos", Ruta = "/ReportesUsuario", IdModulo = 6});
            programasModulos.Add(new ProgramasModulo()
                {Id = 11, Nombre = "Reporte Asignaturas Solicitadas", Ruta = "/ReporteAsignturas", IdModulo = 6});
            programasModulos.Add(new ProgramasModulo()
                {Id = 12, Nombre = "Reporte Stock Insumos", Ruta = "/ReportesStock", IdModulo = 6});
            programasModulos.Add(new ProgramasModulo()
                {Id = 13, Nombre = "Reporte Stock Minimo", Ruta = "/ReportesSolicitud", IdModulo = 6});

            rolProgramasList = new List<RolPrograma>();
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 1, IdPrograma = 1, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 2, IdPrograma = 4, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 3, IdPrograma = 5, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 4, IdPrograma = 6, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 5, IdPrograma = 7, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 6, IdPrograma = 8, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 7, IdPrograma = 9, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 16, IdPrograma = 10, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 17, IdPrograma = 11, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 18, IdPrograma = 12, IdRole = 4});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 19, IdPrograma = 13, IdRole = 4});
            
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 8, IdPrograma = 2, IdRole = 2});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 9, IdPrograma = 3, IdRole = 2});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 10, IdPrograma = 8, IdRole = 2});

            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 11, IdPrograma = 2, IdRole = 3});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 12, IdPrograma = 3, IdRole = 3});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 13, IdPrograma = 8, IdRole = 3});

            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 14, IdPrograma = 7, IdRole = 1});
            rolProgramasList.Add(new RolPrograma() {IdRolePrograma = 15, IdPrograma = 8, IdRole = 1});
            return Roles;
        }

        private static void ConfiguracionesContext(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DetalleInsumo>()
                .HasOne<Insumo>().WithMany()
                .HasForeignKey(p => p.CodigoInsumo);

            modelBuilder.Entity<Solicitud>()
                .HasOne<Asignaturas>().WithMany()
                .HasForeignKey(p => p.CodigoAsignatura);

            modelBuilder.Entity<Solicitud>()
                .HasOne<Persona>().WithMany()
                .HasForeignKey(p => p.IdPersona);


            modelBuilder.Entity<Solicitud>()
                .HasOne<PeriodoAcademico>().WithMany()
                .HasForeignKey(p => p.IdPeriodo);

            modelBuilder.Entity<Chat>()
                .HasOne<Persona>().WithMany()
                .HasForeignKey(p => p.IdPersona);

            modelBuilder.Entity<Usuario>()
                .HasOne<Role>().WithMany()
                .HasForeignKey(p => p.IdRole);

            modelBuilder.Entity<ProgramasModulo>()
                .HasOne<ModuloMenu>().WithMany()
                .HasForeignKey(p => p.IdModulo);

            modelBuilder.Entity<RolPrograma>()
                .HasOne<ProgramasModulo>().WithMany()
                .HasForeignKey(r => r.IdPrograma);

            modelBuilder.Entity<Role>()
                .HasOne<Role>().WithMany()
                .HasForeignKey(r => r.Codigo);
        }
    }
}
