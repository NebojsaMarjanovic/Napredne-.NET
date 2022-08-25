﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using VinskiTurizam.Domain;

namespace VinskiTurizam.Domain.Migrations
{
    [DbContext(typeof(Context))]
    [Migration("20220731192417_KreiranjeTabelaIKardinalnosti")]
    partial class KreiranjeTabelaIKardinalnosti
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .UseIdentityColumns()
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.1");

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RoleId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("RoleId")
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("VinarijaVino", b =>
                {
                    b.Property<int>("VinaVinoId")
                        .HasColumnType("int");

                    b.Property<int>("VinarijeVinarijaId")
                        .HasColumnType("int");

                    b.HasKey("VinaVinoId", "VinarijeVinarijaId");

                    b.HasIndex("VinarijeVinarijaId");

                    b.ToTable("VinarijaVino");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Grad", b =>
                {
                    b.Property<int>("GradId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int>("BrojSlobodnihMesta")
                        .HasColumnType("int");

                    b.Property<double>("CenaPoOsobi")
                        .HasColumnType("float");

                    b.Property<DateTime>("DatumPolaska")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("DatumPovratka")
                        .HasColumnType("datetime2");

                    b.Property<string>("NazivGrada")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Opis")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProgramPutovanja")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Slika")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("GradId");

                    b.ToTable("Gradovi");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Hotel", b =>
                {
                    b.Property<int>("HotelId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int>("GradId")
                        .HasColumnType("int");

                    b.Property<string>("Naziv")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Opis")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("HotelId");

                    b.HasIndex("GradId")
                        .IsUnique();

                    b.ToTable("Hoteli");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Korisnik", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("Ime")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("Prezime")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Rezervacija", b =>
                {
                    b.Property<int>("GradId")
                        .HasColumnType("int");

                    b.Property<string>("KorisnikId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("RezervacijaId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<double>("Cena")
                        .HasColumnType("float");

                    b.Property<string>("Napomena")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("GradId", "KorisnikId", "RezervacijaId");

                    b.HasIndex("KorisnikId");

                    b.ToTable("Rezervacije");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Vinarija", b =>
                {
                    b.Property<int>("VinarijaId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int>("GradId")
                        .HasColumnType("int");

                    b.Property<string>("Naziv")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Opis")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("VinarijaId");

                    b.HasIndex("GradId")
                        .IsUnique();

                    b.ToTable("Vinarije");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Vino", b =>
                {
                    b.Property<int>("VinoId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("Naziv")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("VinoId");

                    b.ToTable("Vina");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Admin", b =>
                {
                    b.HasBaseType("VinskiTurizam.Domain.DbSets.Korisnik");

                    b.Property<DateTime>("DatumZaposlenja")
                        .HasColumnType("datetime2");

                    b.ToTable("Admini");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Klijent", b =>
                {
                    b.HasBaseType("VinskiTurizam.Domain.DbSets.Korisnik");

                    b.Property<string>("BrLicneKarte")
                        .HasColumnType("nvarchar(max)");

                    b.ToTable("Klijenti");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Korisnik", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Korisnik", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("VinskiTurizam.Domain.DbSets.Korisnik", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Korisnik", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("VinarijaVino", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Vino", null)
                        .WithMany()
                        .HasForeignKey("VinaVinoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("VinskiTurizam.Domain.DbSets.Vinarija", null)
                        .WithMany()
                        .HasForeignKey("VinarijeVinarijaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Hotel", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Grad", "Grad")
                        .WithOne("Hotel")
                        .HasForeignKey("VinskiTurizam.Domain.DbSets.Hotel", "GradId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.Navigation("Grad");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Rezervacija", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Grad", "Grad")
                        .WithMany("Rezervacije")
                        .HasForeignKey("GradId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("VinskiTurizam.Domain.DbSets.Korisnik", "Korisnik")
                        .WithMany("Rezervacije")
                        .HasForeignKey("KorisnikId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Grad");

                    b.Navigation("Korisnik");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Vinarija", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Grad", "Grad")
                        .WithOne("Vinarija")
                        .HasForeignKey("VinskiTurizam.Domain.DbSets.Vinarija", "GradId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.Navigation("Grad");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Admin", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Korisnik", null)
                        .WithOne()
                        .HasForeignKey("VinskiTurizam.Domain.DbSets.Admin", "Id")
                        .OnDelete(DeleteBehavior.ClientCascade)
                        .IsRequired();
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Klijent", b =>
                {
                    b.HasOne("VinskiTurizam.Domain.DbSets.Korisnik", null)
                        .WithOne()
                        .HasForeignKey("VinskiTurizam.Domain.DbSets.Klijent", "Id")
                        .OnDelete(DeleteBehavior.ClientCascade)
                        .IsRequired();
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Grad", b =>
                {
                    b.Navigation("Hotel");

                    b.Navigation("Rezervacije");

                    b.Navigation("Vinarija");
                });

            modelBuilder.Entity("VinskiTurizam.Domain.DbSets.Korisnik", b =>
                {
                    b.Navigation("Rezervacije");
                });
#pragma warning restore 612, 618
        }
    }
}
