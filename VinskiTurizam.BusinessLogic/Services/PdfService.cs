using PdfSharp.Drawing;
using PdfSharp.Pdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.Domain.DbSets;

namespace VinskiTurizam.BusinessLogic.Services
{
    public class PdfService : IPdfService
    {
        public async Task<string> KreirajPdf(Rezervacija rezervacija)
        {
            var document = new PdfDocument();
            document.Info.Title = $"Rezervacija-{rezervacija.RezervacijaId}";

            var page = document.AddPage();

            var gfx = XGraphics.FromPdfPage(page);

            var potvrdaHeadlineFont = new XFont("Verdana", 24, XFontStyle.BoldItalic);
            var rezervacijaHeadLineFont = new XFont("Verdana", 20, XFontStyle.BoldItalic);
            var contentFont = new XFont("Verdana", 12, XFontStyle.Regular);
            XPen line = new XPen(XColors.Black, 2);
         


           
            gfx.DrawString("Potvrda rezervacije", potvrdaHeadlineFont, XBrushes.Black,
                new XRect(0, 30, page.Width, 30),
                XStringFormats.Center);
            
            gfx.DrawString(rezervacija.Grad.NazivGrada, rezervacijaHeadLineFont, XBrushes.Black,
               new XRect(0, 80, page.Width, 20),
               XStringFormats.Center);

            gfx.DrawString("ID rezervacije: " + rezervacija.RezervacijaId, contentFont, XBrushes.Black,
               new XRect(20, 130, page.Width, 20),
               XStringFormats.CenterLeft);

            gfx.DrawString("Datum polaska: " + rezervacija.Grad.DatumPolaska.ToString("dd/MM/yyyy HH:mm"), contentFont, XBrushes.Black,
               new XRect(20, 160, page.Width, 20),
               XStringFormats.CenterLeft);
           
            gfx.DrawString("Datum povratka: " + rezervacija.Grad.DatumPovratka.ToString("dd/MM/yyyy HH:mm"), contentFont, XBrushes.Black,
              new XRect(20, 190, page.Width, 20),
              XStringFormats.CenterLeft);
            
            gfx.DrawString($"Broj osoba: {rezervacija.BrojOsoba}", contentFont, XBrushes.Black,
              new XRect(20, 220, page.Width, 20),
              XStringFormats.CenterLeft);
            
            gfx.DrawString($"Hotel: {rezervacija.Grad.Hotel.Naziv}", contentFont, XBrushes.Black,
             new XRect(20, 250, page.Width, 20),
             XStringFormats.CenterLeft);
            
            gfx.DrawString($"Doručak u hotelu: {(rezervacija.DorucakUHotelu==true ? "Da" : "Ne")}", contentFont, XBrushes.Black,
            new XRect(20, 280, page.Width, 20),
            XStringFormats.CenterLeft);
            
            gfx.DrawString($"Vinarija: {rezervacija.Grad.Vinarija.Naziv}", contentFont, XBrushes.Black,
             new XRect(20, 310, page.Width, 20),
             XStringFormats.CenterLeft);
            
            gfx.DrawString($"Večera u vinariji: {(rezervacija.VeceraUVinariji == true ? "Da" : "Ne")}", contentFont, XBrushes.Black,
            new XRect(20, 340, page.Width, 20),
            XStringFormats.CenterLeft);

            gfx.DrawString($"Napomena: {rezervacija.Napomena}", contentFont, XBrushes.Black,
             new XRect(20, 370, page.Width, 20),
            XStringFormats.CenterLeft);

            gfx.DrawLine(line, 0, 420, page.Width, 420);
            
            gfx.DrawString($"Klijent: {rezervacija.Korisnik.Ime} {rezervacija.Korisnik.Prezime}", contentFont, XBrushes.Black,
            new XRect(20, 470, page.Width, 20),
            XStringFormats.CenterLeft);
           
            gfx.DrawString($"Broj telefona: {rezervacija.Korisnik.PhoneNumber}", contentFont, XBrushes.Black,
            new XRect(20, 500, page.Width, 20),
            XStringFormats.CenterLeft);
            
            gfx.DrawLine(line, 0, 550, page.Width, 550);

            gfx.DrawString($"Cena: {rezervacija.Cena}€", contentFont, XBrushes.Black,
            new XRect(20, 600, page.Width, 20),
            XStringFormats.CenterLeft);



            string filePath = @"C:\Users\Korisnik\Desktop\TuristickaAgencijaTT-master\frontend\public";
            var filename = $@"Rezervacija-{rezervacija.RezervacijaId}.pdf";
            var result = filePath + @$"\{filename}";
            document.Save(result);

            return await Task.FromResult(filename);

        }
    }
}
