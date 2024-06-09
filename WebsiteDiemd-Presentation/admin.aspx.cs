﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDiemd_Library.business;

namespace WebsiteDiemd_Presentation
{
    public partial class admin : System.Web.UI.Page
    {
        controller _bc = new controller();

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["rol"] == null))
            {
                Response.Redirect("aanmelden.aspx");
            }


            if ((Session["rol"].ToString() == "werknemer"))
            {
            }
            else
            {
                Response.Redirect("aanmelden.aspx");
            }

           
        }

        protected void wijzig(object sender, EventArgs e)
        {
            Response.Redirect("Wijzigen.aspx");
        }

        protected void verwijderen(object sender, EventArgs e)
        {
            Response.Redirect("Verwijderen.aspx");
        }

        protected void toevoegen(object sender, EventArgs e)
        {
            Response.Redirect("Toevoegen.aspx");
        }

        protected void afmelden_click(object sender, EventArgs e)
        {
            Response.Redirect("afmelding.aspx");
        }
    }
}