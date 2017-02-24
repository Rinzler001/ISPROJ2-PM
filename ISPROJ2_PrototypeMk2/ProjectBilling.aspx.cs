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
    public partial class ProjectBilling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["ProjectBill"] != null)
            {
                GridView1.Visible = false;
                GridView1.Enabled = false;
                GridView2.Visible = true;
                GridView3.Visible = true;
                Panel1.Visible = true;
                DataTable[] wee = Business.getProjectBill(Session["ProjectBill"].ToString());

                GridView2.DataSource = wee[0];
                GridView3.DataSource = wee[1];
                GridView2.DataBind();
                GridView3.DataBind();
            }
            else
            {
                Panel1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("ProjectBill", GridView1.SelectedRow.Cells[1].Text);
            GridView1.Visible = false;
            GridView1.Enabled = false;
            GridView2.Visible = true;
            GridView3.Visible = true;
            Panel1.Visible = true;
            DataTable[] wee = Business.getProjectBill(Session["ProjectBill"].ToString());

            GridView2.DataSource = wee[0];
            GridView3.DataSource = wee[1];
            GridView2.DataBind();
            GridView3.DataBind();
        }
    }
}