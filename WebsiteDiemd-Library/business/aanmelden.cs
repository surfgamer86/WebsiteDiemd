using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebsiteDiemd_Library.business
{
    class aanmelden
    {
        int _id;
        string _naam;
        string _voornaam;
        DateTime _gebdatum;
        bool _sex;
        string _username;
        string _password;
        string _straat;
        int _nummer;
        int _postcode;
        string _gemeente;
        string _email;
        int _telnr;

        public int Id { get => _id; set => _id = value; }
        public string Naam { get => _naam; set => _naam = value; }
        public string Voornaam { get => _voornaam; set => _voornaam = value; }
        public DateTime Gebdatum { get => _gebdatum; set => _gebdatum = value; }
        public bool Sex { get => _sex; set => _sex = value; }
        public string Username { get => _username; set => _username = value; }
        public string Password { get => _password; set => _password = value; }
        public string Straat { get => _straat; set => _straat = value; }
        public int Nummer { get => _nummer; set => _nummer = value; }
        public int Postcode { get => _postcode; set => _postcode = value; }
        public string Gemeente { get => _gemeente; set => _gemeente = value; }
        public string Email { get => _email; set => _email = value; }
        public int Telnr { get => _telnr; set => _telnr = value; }

        public aanmelden(int id, string naam, string voornaam, DateTime gebdatum, bool sex, string username, string password, string straat, int nummer, int postcode, string gemeente, string email, int telnr)
        {
            Id = id;
            Naam = naam;
            Voornaam = voornaam;
            Gebdatum = gebdatum;
            Sex = sex;
            Username = username;
            Password = password;
            Straat = straat;
            Nummer = nummer;
            Postcode = postcode;
            Gemeente = gemeente;
            Email = email;
            Telnr = telnr;
        }
        public aanmelden( string naam, string voornaam, DateTime gebdatum, bool sex, string username, string password, string straat, int nummer, int postcode, string gemeente, string email, int telnr)
        {
            
            Naam = naam;
            Voornaam = voornaam;
            Gebdatum = gebdatum;
            Sex = sex;
            Username = username;
            Password = password;
            Straat = straat;
            Nummer = nummer;
            Postcode = postcode;
            Gemeente = gemeente;
            Email = email;
            Telnr = telnr;
        }
    }
}
