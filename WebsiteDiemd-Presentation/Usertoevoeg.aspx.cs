using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDiemd_Library.business;

namespace WebsiteDiemd_Presentation
{
    public partial class Usertoevoeg : System.Web.UI.Page
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
                
            }
            else
            {
                Response.Redirect("aanmelden.aspx");
            }
            ResetForm();
            
           
        }
        protected void ResetForm()
        {
            
            waarText.Value = "";
            probleemText.Value = "";
        }

        protected void toevoegenButton_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int werknemer = r.Next(0, 4);
            _bc.AddBoeking(Convert.ToInt16(_bc.GetID(Session["username"].ToString())), werknemer, Convert.ToDateTime(calender.SelectedDate), waarText.Value, probleemText.Value);
            ResetForm();
        }

    }
}