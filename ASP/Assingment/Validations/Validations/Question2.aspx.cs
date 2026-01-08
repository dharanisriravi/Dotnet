using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validations
{
    public partial class Question2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }
        protected void ddlChg(object sender, EventArgs e)
        {
            string val = ddlProd.SelectedValue;

            if (val == "1") imgProd.ImageUrl = "Images/earpods.jpg";
            else if (val == "2") imgProd.ImageUrl = "Images/smartphone.jpg";
            else if (val == "3") imgProd.ImageUrl = "Images/watch.jpg";
            else imgProd.ImageUrl = "";
        }
        protected void btnPr(object sender, EventArgs e)
        {
            string val = ddlProd.SelectedValue;

            if (val == "1") lblPrice.Text = "Price: 5000";
            else if (val == "2") lblPrice.Text = "Price: 70000";
            else if (val == "3") lblPrice.Text = "Price: 10000";
            else lblPrice.Text = "Please Select a Product";
        }
    }
}