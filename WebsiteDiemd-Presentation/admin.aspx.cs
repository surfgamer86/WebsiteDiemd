using System;
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
            
            if ((Session["rol"].ToString() == "werknemer"))
            {
            }
            else
            {
                Response.Redirect("aanmelden.aspx");
            }
            GridView1.DataSource = _bc.GetBoekingen();
            GridView1.DataBind();
        }

        protected void wijzig(object sender, EventArgs e)
        {
            //_bc.AlterBoeking();
        }
        protected void verwijderen(object sender, EventArgs e)
        {
            string username =_bc.GetID(Session["username"].ToString());
            _bc.DelBoeking(Convert.ToInt16(username));
        }
        protected void toevoegen(object sender, EventArgs e)
        {
            //_bc.AddBoeking();
        }
    }
}