using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteDiemd_Presentation
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["rol"].ToString() == "klant") || (Session["rol"].ToString() == "werknemer"))
            {
                naamLabel.Text = Session["username"].ToString();
                
            }
            else
            {
                Response.Redirect("aanmelden.aspx");
            }


        }
    }
}