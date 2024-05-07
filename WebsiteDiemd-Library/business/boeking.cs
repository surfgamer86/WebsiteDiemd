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

        public boeking(int boekingid, int aanmeldingid, int dienstid, DateTime tijd, string probleem)
        {
            Boekingid = boekingid;
            Aanmeldingid = aanmeldingid;
            Dienstid = dienstid;
            Tijd = tijd;
            Probleem = probleem;
        }

        public int Boekingid { get => _boekingid; set => _boekingid = value; }
        public int Aanmeldingid { get => _aanmeldingid; set => _aanmeldingid = value; }
        public int Dienstid { get => _dienstid; set => _dienstid = value; }
        public DateTime Tijd { get => _tijd; set => _tijd = value; }
        public string Probleem { get => _probleem; set => _probleem = value; }
    }
}
