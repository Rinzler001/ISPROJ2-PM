using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PROJ2_PTE.Class;

namespace ISPROJ2_PrototypeMk2
{
    public partial class Task_Update : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Auth"] == null && Session["AuthWho"] == null && Session["AuthWhat"] == null)
            {
                Response.Redirect("Landing.aspx");
            }
            else if (Session["Auth"] != null && Session["AuthWho"] != null && Session["AuthWhat"].ToString().Trim() != "Field_Engr")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Business bum = new Business();
                GridView1.DataSource = bum.getMyTask(Session["Auth"].ToString());
                GridView1.DataBind();
            }

            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.Cells[5].Text != DateTime.Now.ToString("yyyy-MM-dd"))
                {
                    row.Enabled = false;
                }
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Business bumbum = new Business();
            DataTable m = bumbum.kliyent(GridView1.SelectedRow.Cells[2].Text);


            if (GridView1.SelectedRow.Cells[5].Text != DateTime.Now.ToString("yyyy-MM-dd"))
            {
                Label1.Text = "Not yet time.";
            }
            else
            {
                Label1.Text = "";
                lblClient.Text = m.Rows[0][0].ToString();
                lblTask.Text = GridView1.SelectedRow.Cells[1].Text;
                HiddenField1.Value = GridView1.SelectedRow.Cells[4].Text;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Business.updateThisTask(HiddenField1.Value.ToString());
            Response.Redirect("PrCreateSuccess.aspx");
            
        }
    }
}