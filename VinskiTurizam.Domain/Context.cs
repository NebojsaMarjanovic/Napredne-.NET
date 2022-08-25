using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using VinskiTurizam.Domain.DbSets;

namespace VinskiTurizam.Domain
{
    public class Context : IdentityDbContext<Korisnik>
    {
        public DbSet<Grad> Gradovi { get; set; }
        public DbSet<Hotel> Hoteli { get; set; }
        public DbSet<Vinarija> Vinarije { get; set; }
        public DbSet<Korisnik> Korisnici { get; set; }
        public DbSet<Admin> Admini { get; set; }
        public DbSet<Klijent> Klijenti { get; set; }
        public DbSet<Rezervacija> Rezervacije { get; set; }
        public DbSet<Vino> Vina { get; set; }


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=(localdb)\mssqllocaldb; Database=VinskiTurizam; 
            Trusted_Connection=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Grad>().HasOne(g => g.Hotel).WithOne(h=>h.Grad).HasForeignKey<Hotel>(h => h.GradId).OnDelete(DeleteBehavior.NoAction);
           
            modelBuilder.Entity<Grad>().HasOne(g => g.Vinarija).WithOne(v => v.Grad).HasForeignKey<Vinarija>(v => v.GradId).OnDelete(DeleteBehavior.NoAction);

            modelBuilder.Entity<Vinarija>().HasMany(v => v.Vina).WithMany(v => v.Vinarije);

            modelBuilder.Entity<Admin>().HasBaseType<Korisnik>().ToTable("Admini");

            modelBuilder.Entity<Klijent>().HasBaseType<Korisnik>().ToTable("Klijenti");

            modelBuilder.Entity<Rezervacija>().HasKey(r => new { r.GradId, r.KorisnikId, r.RezervacijaId });
            modelBuilder.Entity<Rezervacija>().HasOne(r => r.Grad).WithMany(g => g.Rezervacije).HasForeignKey(r => r.GradId);
            modelBuilder.Entity<Rezervacija>().HasOne(r => r.Korisnik).WithMany(k => k.Rezervacije).HasForeignKey(r => r.KorisnikId);

        }
    }
}
