using Microsoft.EntityFrameworkCore.Migrations;

namespace VinskiTurizam.Domain.Migrations
{
    public partial class IzmeneRezervacije : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "DorucakUHotelu",
                table: "Rezervacije",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "VecceraUVinariji",
                table: "Rezervacije",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<int>(
                name: "brojOsoba",
                table: "Rezervacije",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DorucakUHotelu",
                table: "Rezervacije");

            migrationBuilder.DropColumn(
                name: "VecceraUVinariji",
                table: "Rezervacije");

            migrationBuilder.DropColumn(
                name: "brojOsoba",
                table: "Rezervacije");
        }
    }
}
