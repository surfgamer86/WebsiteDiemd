using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebsiteDiemd_Library.business;
using MySql.Data.MySqlClient;

namespace WebsiteDiemd_Library.persitence
{
    class persist
    {
        private string _connectionString;
        public persist()
        {
            _connectionString = @"server=localhost;user id=root;database=diemdtechnologiesIlyaan;password=test123";
        }

        //Om gegevens op te vragen uit de tabel tblaanmelden
        public List<aanmelden> UitvoerAanmelden()
        {
            List<aanmelden> lijst = new List<aanmelden>();
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select * from tblaanmelden", conn);
            conn.Open();
            MySqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read() == true)
            {
                lijst.Add(new aanmelden(Convert.ToInt16(dataReader["AanmeldenID"]), dataReader["Naam"].ToString(), dataReader["Naam"].ToString(),
                    Convert.ToDateTime(dataReader["Geboortedatum"]), Convert.ToBoolean(dataReader["Geslacht"]), dataReader["gebruikersnaam"].ToString(),
                    dataReader["Wachtwoord"].ToString(), dataReader["Straat"].ToString(), Convert.ToInt16(dataReader["Nummer"]), Convert.ToInt16(dataReader["Postcode"]),
                    dataReader["Gemeente"].ToString(), dataReader["Email"].ToString(), Convert.ToInt16(dataReader["Telnr"]), dataReader["rol"].ToString()));
            }
            conn.Close();
            return lijst;
        }

        // Uitvoer voor tblboeking
        public List<boeking> UitvoerBoekingen()
        {
            List<boeking> lijst = new List<boeking>();
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select * from tblboeking", conn);
            conn.Open();
            MySqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read() == true)
            {
                lijst.Add(new boeking(Convert.ToInt16(dataReader["BoekingsID"]), Convert.ToInt16(dataReader["AanmeldenID"]), Convert.ToInt16(dataReader["DienstID"]), Convert.ToDateTime(dataReader["Wanneer"]), dataReader["Waar"].ToString(), dataReader["Probleem"].ToString()));
            }
            conn.Close();
            return lijst;
        }

        //om een persoon te kunnen toe te voegen
        public void AddBoeking(boeking boeking)
        {
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("insert into tblboeking(AanmeldenID, DienstID, Wanneer, Waar, Probleem) values(@AanmeldenID, @DienstID, @Wanneer, @Waar, @Probleem)", conn);
            cmd.Parameters.AddWithValue("AanmeldenID", boeking.Aanmeldingid);
            cmd.Parameters.AddWithValue("DienstID", boeking.Dienstid);
            cmd.Parameters.AddWithValue("Wanneer", boeking.Tijd);
            cmd.Parameters.AddWithValue("Waar", boeking.Waar);
            cmd.Parameters.AddWithValue("Probleem", boeking.Probleem);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        // Wijzigen van Boeking
        public void AlterBoeking(int id, boeking boeking)
        {
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("update tblboeking set AanmeldenID = @AanmeldenID, DienstID = @DienstID, Wanneer = @Wanneer, Waar = @Waar, Probleem = @Probleem where BoekingsID = " + id.ToString(), conn);
            cmd.Parameters.AddWithValue("AanmeldenID", boeking.Aanmeldingid);
            cmd.Parameters.AddWithValue("DienstID", boeking.Dienstid);
            cmd.Parameters.AddWithValue("Wanneer", boeking.Tijd);
            cmd.Parameters.AddWithValue("Waar", boeking.Waar);
            cmd.Parameters.AddWithValue("Probleem", boeking.Probleem);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        // Verwijderen van een Boeking
        public void DeleteBoeking(int id)
        {
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("delete from tblboeking where BoekingsID = " + id.ToString(), conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        // Aantal boekingen
        public int GetAantalBoekingen()
        {
            int aantal;
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select count(BoekingsID) from tblboeking", conn);
            conn.Open();
            aantal = Convert.ToInt16(cmd.ExecuteScalar());
            conn.Close();
            return aantal;
        }

        // Get Personen
        public List<aanmelden> GetPersonen()
        {
            List<aanmelden> lijst = new List<aanmelden>();
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select Naam from tblaanmelden", conn);
            conn.Open();
            MySqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read() == true)
            {
                lijst.Add(new aanmelden(dataReader["Naam"].ToString(), "naam"));
            }
            conn.Close();
            return lijst;
        }

        // Get Diensten
        public List<diensten> GetDiensten()
        {
            List<diensten> lijst = new List<diensten>();
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select Omschrijving from tbldiensten", conn);
            conn.Open();
            MySqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read() == true)
            {
                lijst.Add(new diensten(dataReader["Omschrijving"].ToString()));
            }
            conn.Close();
            return lijst;
        }

        // Get gebruikersnaam, Wachtwoord en Get rol
        public string GetRol(string gebruikersnaam)
        {
            string uitvoer = "";
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select rol from tblaanmelden where gebruikersnaam = '" + gebruikersnaam + "'", conn);
            conn.Open();
            MySqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read())
            {
                uitvoer = Convert.ToString(dataReader["rol"]);
            }
            return uitvoer;
        }

        public string GetWacht(string gebruikersnaam, string wachtwoord)
        {
            string uitvoer = "";
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select wachtwoord from tblaanmelden where gebruikersnaam = '" + gebruikersnaam + "' and wachtwoord = '" + wachtwoord + "'", conn);
            conn.Open();
            MySqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read())
            {
                uitvoer = Convert.ToString(dataReader["wachtwoord"]);
            }
            return uitvoer;
        }

        public string GetGebr(string gebruikersnaam)
        {
            string uitvoer = "";
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select gebruikersnaam from tblaanmelden where gebruikersnaam = '" + gebruikersnaam + "'", conn);
            conn.Open();
            MySqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read())
            {
                uitvoer = Convert.ToString(dataReader["gebruikersnaam"]);
            }
            return uitvoer;
        }

        // Get ID
        public string GetID(string gebruikersnaam)
        {
            string uitvoer = "";
            MySqlConnection conn = new MySqlConnection(_connectionString);
            MySqlCommand cmd = new MySqlCommand("select AanmeldenID from tblaanmelden where gebruikersnaam = '" + gebruikersnaam + "'", conn);
            conn.Open();
            MySqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read())
            {
                uitvoer = Convert.ToString(dataReader["AanmeldenID"]);
            }
            return uitvoer;
        }
    }
}
