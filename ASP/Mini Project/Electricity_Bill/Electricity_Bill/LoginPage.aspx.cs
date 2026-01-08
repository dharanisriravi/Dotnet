using System;

using System.Collections.Generic;

using System.Linq;

using System.Web;

using System.Web.UI;

using System.Web.UI.WebControls;

namespace Electricity_Bill

{

    public partial class LoginPage : System.Web.UI.Page

    {

        private string adminUsername = "dharani";

        private string adminPassword = "2004";

        protected void Page_Load(object sender, EventArgs e)

        {

            lblMessage.Text = "";

        }

        protected void btnLogin_Click(object sender, EventArgs e)

        {

            string username = txtUsername.Text.Trim();

            string password = txtPassword.Text.Trim();

            if (username == adminUsername && password == adminPassword)

            {

                Response.Redirect("AddingBill.aspx");

            }

            else

            {

                lblMessage.Text = "Invalid Username or Password";

            }

        }

    }

}

