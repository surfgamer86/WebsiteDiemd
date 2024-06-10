using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDiemd_Library.business;

namespace WebsiteDiemd_Presentation
{
    public partial class aantalboeking : System.Web.UI.Page
    {
        controller _bc = new controller();
        protected void Page_Load(object sender, EventArgs e)
        {
        if ((Session["rol"] == null))
            {
                Response.Redirect("aanmelden.aspx");
            }
        if ((Session["rol"].ToString() == "klant") || (Session["rol"].ToString() == "werknemer"))
            {
                naamLabel.Text = Session["username"].ToString();
                aantalLabel.Text = _bc.GetAantalBoekingen();
                
            }
            else
            {
                Response.Redirect("aanmelden.aspx");
            }

        }
    }
}
