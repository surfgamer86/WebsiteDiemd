using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDiemd_Library.business;

namespace WebsiteDiemd_Presentation
{
    public partial class aanmelden : System.Web.UI.Page
    {
        private controller _bc = new controller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            string gebruikersnaam = usernameInput.Value;
            string wachtwoord = passwordInput.Value;

            string gebruikersnaamdb = _bc.GetGebr(gebruikersnaam);
            string wachtwoorddb = _bc.GetWacht(gebruikersnaam, wachtwoord);
            

            if (gebruikersnaam != gebruikersnaamdb || wachtwoord != wachtwoorddb)
            {
                Response.Write("<script> alert('Gebruikersnaam of wachtwoord bestaat niet')</script>");
                return; 
            }
            
            Session["access"] = "true";
            Session["username"] = gebruikersnaam;
            string rol = _bc.GetRol(gebruikersnaam);
            if (rol.Equals("Werknemer"))
            {
                Session["rol"] = "werknemer";
                Response.Redirect("admin.aspx");
                
            }

            else
            {
                 Session["rol"] = "klant";
                Response.Redirect("user.aspx");
                
            }
        }
    }
}