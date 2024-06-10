using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDiemd_Library.business;

namespace WebsiteDiemd_Presentation
{
    public partial class SignUp : System.Web.UI.Page
    {
        controller _bc = new controller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            _bc.AddPersoon(txtNaam.Text,txtVoornaam.Text, Convert.ToDateTime(gebdatumCalender.Value), Convert.ToBoolean(ddlGeslacht.SelectedIndex), txtUsername.Text,txtPassword.Text, txtStraat.Text, Convert.ToInt16(txtHousenumber.Text), Convert.ToInt16(txtPostcode.Text),  txtCity.Text,txtEmail.Text,Convert.ToInt32(txtPhonenumber.Text), "Klant" );
        }
    }
}