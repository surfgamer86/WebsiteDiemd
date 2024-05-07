﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebsiteDiemd_Library.business
{
    class diensten
    {
        int _id;
        string _omschrijving;
        double _prijs;

        public diensten(int id, string omschrijving, double prijs)
        {
            Id = id;
            Omschrijving = omschrijving;
            Prijs = prijs;
        }

        public int Id { get => _id; set => _id = value; }
        public string Omschrijving { get => _omschrijving; set => _omschrijving = value; }
        public double Prijs { get => _prijs; set => _prijs = value; }
    }
}