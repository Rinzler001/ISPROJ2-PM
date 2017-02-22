using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using PROJ2_PTE.Class;

namespace ISPROJ2_PrototypeMk2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Auth"] == null && Session["AuthWho"] == null && Session["AuthWhat"] == null)
            {

            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Business.chkLogIn(txtAcct.Text, txtPass.Text).Item1.Equals(false))
            {
                Label1.Text = "Invalid Details!";
            }
            else if (string.IsNullOrWhiteSpace(txtAcct.Text) && string.IsNullOrWhiteSpace(txtPass.Text))
            {
                Label1.Text = "Empty Values";
            }
            else if (string.IsNullOrEmpty(txtAcct.Text) && string.IsNullOrEmpty(txtPass.Text))
            {
                Label1.Text = "Empty Values";
            }
            else
            {
                string[] test = Business.chkLogIn(txtAcct.Text, txtPass.Text).Item2;
                Session["Auth"] = test[0];
                Session["AuthWho"] = test[1];
                Session["AuthWhat"] = test[2];
                Response.Redirect("dashboard.aspx");
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }
    }
}