using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebsiteDiemd_Library.persitence;

namespace WebsiteDiemd_Library.business
{
    public class controller
    {
        private persist _persistCode = new persist();

        public List<boeking> GetBoekingen()
        {
            List<boeking> lijst = new List<boeking>();
            foreach (boeking boeking in _persistCode.UitvoerBoekingen())
            {
                lijst.Add(boeking);
            }

            return lijst;
        }

        public void AddBoeking(int AanmeldenID, int DienstID, DateTime Wanneer, string Waar, string probleem)
        {
            boeking boeking = new boeking(DienstID, AanmeldenID, Wanneer, probleem, Waar);
            _persistCode.AddBoeking(boeking);
        }

        public void AddPersoon(string naam, string voornaam, DateTime gebdatum, bool sex, string username, string wachtwoord, string straat, int nummer, int postcode, string gemeente, string email, int telnr, string rol)
        {
            aanmelden aanmelden = new aanmelden
            (
                 naam,
                 voornaam,
                gebdatum,
                sex,
                username,
                wachtwoord,
                    straat,
                nummer,
                postcode,
                gemeente,
                email,
                telnr,
                rol
            );
            _persistCode.AddPersoon(aanmelden);
        }

        public void DelBoeking(int id)
        {
            _persistCode.DeleteBoeking(id);
        }

        public void AlterBoeking(int id, boeking boeking)
        {
            _persistCode.AlterBoeking(id, boeking);
        }

        public int GetAantalBoekingen()
        {
            return _persistCode.GetAantalBoekingen();
        }

        public List<aanmelden> GetPersonen()
        {
            List<aanmelden> lijst = new List<aanmelden>();
            foreach (aanmelden aanmelden in _persistCode.GetPersonen())
            {
                lijst.Add(aanmelden);
            }

            return lijst;
        }

        public List<diensten> GetDiensten()
        {
            List<diensten> lijst = new List<diensten>();
            foreach (diensten diensten in _persistCode.GetDiensten())
            {
                lijst.Add(diensten);
            }

            return lijst;
        }

        public string GetRol(string gebruikersnaam)
        {
            return _persistCode.GetRol(gebruikersnaam);
        }

        public string GetWacht(string gebruikersnaam, string wachtwoord)
        {
            return _persistCode.GetWacht(gebruikersnaam, wachtwoord);
        }

        public string GetGebr(string gebruikersnaam)
        {
            return _persistCode.GetGebr(gebruikersnaam);
        }

        public string GetID(string gebruikersnaam)
        {
            return _persistCode.GetID(gebruikersnaam);
        }
    }
}
