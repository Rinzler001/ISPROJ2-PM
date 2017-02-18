using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPROJ2_PrototypeMk2
{
    public partial class master : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)(Session["AuthWho"]);
            Label3.Text = (string)(Session["Auth"]);
            Label4.Text = (string)(Session["AuthWhat"]);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["AuthWhat"].ToString().Trim() == "P_Supervisor")
            {
                Response.Redirect("Project_Creation.aspx");
            }
            else
            {
                Label2.Text = "You are not allowed to do that";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Session["AuthWhat"].ToString().Trim() == "Field_Engr")
            {
                Response.Redirect("Task_Update.aspx");
            }
            else
            {
                Label2.Text = "You are not allowed to do that";
            }
        }
        
    }
}