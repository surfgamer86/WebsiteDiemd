using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDiemd_Library.business;

namespace WebsiteDiemd_Presentation
{
    public partial class Verwijderen : System.Web.UI.Page
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
            GridView1.DataSource = _bc.GetBoekingen();
            GridView1.DataBind();
        }
        protected void deleteButton_click(object sender, EventArgs e)
        {
            _bc.DelBoeking(Convert.ToInt16((Label1.Text)));
            ResetForm();
        }

        protected void GridView1_OnSelectedIndexChanged(object sender, EventArgs e)
        {
             Label1.Text = GridView1.SelectedRow.Cells[1].Text;
             ResetForm();
        }

        protected void ResetForm()
        {
            GridView1.DataSource = _bc.GetBoekingen();
            GridView1.DataBind();
        }
    }
}