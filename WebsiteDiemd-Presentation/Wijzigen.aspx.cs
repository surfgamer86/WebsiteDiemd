using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDiemd_Library.business;

namespace WebsiteDiemd_Presentation
{
    public partial class Wijzigen : System.Web.UI.Page
    {
        private controller _bc = new controller();

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

        protected void GridView1_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            boekingtext.Value = GridView1.SelectedRow.Cells[1].Text;
            aanmeldList.SelectedIndex =Convert.ToInt16(GridView1.SelectedRow.Cells[2].Text)-1;
            dienstList.SelectedIndex = Convert.ToInt16(GridView1.SelectedRow.Cells[3].Text)-1;
            calender.SelectedDate = Convert.ToDateTime(GridView1.SelectedRow.Cells[4].Text);
            calender.VisibleDate = Convert.ToDateTime(GridView1.SelectedRow.Cells[4].Text);
            waarText.Value = GridView1.SelectedRow.Cells[5].Text;
            probleemText.Value = GridView1.SelectedRow.Cells[6].Text;
        }
        protected void wijzigButton_Click(object sender, EventArgs e)
        {
            _bc.AlterBoeking(Convert.ToInt16(boekingtext.Value),Convert.ToInt16(aanmeldList.SelectedIndex),Convert.ToInt16(dienstList.SelectedIndex),Convert.ToDateTime(calender.SelectedDate),waarText.Value,probleemText.Value);
            ResetForm();
        }
    }
}