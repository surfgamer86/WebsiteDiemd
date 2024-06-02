using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebsiteDiemd_Library.business
{
    class boeking
    {
        int _boekingid;
        int _aanmeldingid;
        int _dienstid;
        DateTime _tijd;
        string _probleem;
         string _waar;

        public boeking(int boekingid, int aanmeldingid, int dienstid, DateTime tijd, string probleem, string waar)
        {
            Boekingid = boekingid;
            Aanmeldingid = aanmeldingid;
            Dienstid = dienstid;
            Tijd = tijd;
            Probleem = probleem;
            _waar = waar;
        }
        public boeking(int aanmeldingid, int dienstid, DateTime tijd, string probleem, string waar)
        {
            Aanmeldingid = aanmeldingid;
            Dienstid = dienstid;
            Tijd = tijd;
            Probleem = probleem;
            _waar = waar;
        }

        public int Boekingid { get => _boekingid; set => _boekingid = value; }
        public int Aanmeldingid { get => _aanmeldingid; set => _aanmeldingid = value; }
        public int Dienstid { get => _dienstid; set => _dienstid = value; }
        public DateTime Tijd { get => _tijd; set => _tijd = value; }
        public string Probleem { get => _probleem; set => _probleem = value; }
        public string Waar { get => _waar; set => _waar = value; }
    }
}
