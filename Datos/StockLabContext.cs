using System;
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
        
        
        
        

        protected override void OnModelCreating(ModelBuilder modelBuilder)
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
        }
    }
}
