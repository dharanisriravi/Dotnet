using System;

namespace Electricity_Bill

{

    public partial class Logout : System.Web.UI.Page

    {

        protected void Page_Load(object sender, EventArgs e)

        {

            Session.Clear();

            Session.Abandon();

            Response.Redirect("LoginPage.aspx");

        }

    }

}

