using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDiemd_Library.business;

namespace WebsiteDiemd_Presentation
{
    public partial class Toevoegen : System.Web.UI.Page
    {
        private controller _bc = new controller();
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

            if (!IsPostBack)
            {
                ResetForm();
            }
        }
        protected void ResetForm()
        {
            GridView1.DataSource = _bc.GetBoekingen();
            GridView1.DataBind();
            aanmeldList.DataSource = _bc.GetPersonen();
            aanmeldList.DataBind();
            dienstList.DataSource = _bc.GetDiensten();
            dienstList.DataBind();
            waarText.Value = "";
            probleemText.Value = "";
        }

        protected void toevoegenButton_Click(object sender, EventArgs e)
        {
            
           
            _bc.AddBoeking(Convert.ToInt16(aanmeldList.SelectedIndex)+1,Convert.ToInt16(dienstList.SelectedIndex)+1,Convert.ToDateTime(calender.SelectedDate) ,waarText.Value ,probleemText.Value);
            ResetForm();

        }
    }
}