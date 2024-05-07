using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebsiteDiemd_Library.business
{
    class voorbereiding
    {
        int _opdrachtid;
        int _aanmeldenid;
        int _dienstid;
        int _duur;

        public voorbereiding(int opdrachtid, int aanmeldenid, int dienstid, int duur)
        {
            Opdrachtid = opdrachtid;
            Aanmeldenid = aanmeldenid;
            Dienstid = dienstid;
            Duur = duur;
        }

        public int Opdrachtid { get => _opdrachtid; set => _opdrachtid = value; }
        public int Aanmeldenid { get => _aanmeldenid; set => _aanmeldenid = value; }
        public int Dienstid { get => _dienstid; set => _dienstid = value; }
        public int Duur { get => _duur; set => _duur = value; }
    }
}
