using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using PROJ2_PTE.Class;

namespace PROJ2_PTE
{
    public partial class Project_Creation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblAuth.Text = Request.QueryString["auth"];
            lblAuth.Text = (string)(Session["Auth"]);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Server=DIANE\\FRANCISCO;Database=ISPROJ2;Trusted_Connection=True;";
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT TOP 1 Pr_ID FROM Project ORDER BY Pr_ID DESC", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            int pid = int.Parse(dt.Rows[0][0].ToString()) + 1;

            txtProjID.Text = pid.ToString();

            //Business Biz = new Business();
            //GridView4.DataSource = Biz.getEmp();
            //GridView4.DataBind();

            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Business.createProj(txtProjID.Text, txtProjTitle.Text, txtRefNum.Text, txtPrDesc.Text, DDClient.SelectedValue, 
                Session["Auth"].ToString(), DDProjLead.SelectedValue, txtStDate.Text, txtEnDate.Text, (DataTable)Session["TaskMembers"], 
                (DataTable)Session["TaskOnly"]);


            
            Response.Redirect("PrCreateSuccess.aspx?=" + Request.QueryString["auth"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataTable TaskMembers;
            DataTable TaskOnly;
            string str = "";

            if (Session["TaskOnly"] != null)
            {
                // Typecasting
                TaskOnly = (DataTable)Session["TaskOnly"];
            }
            else
            {
                TaskOnly = new DataTable();
                TaskOnly.Columns.Add("Task ID");
                TaskOnly.Columns.Add("Task Details");
                TaskOnly.Columns.Add("Task SDate");
                TaskOnly.Columns.Add("Task EDate");
                TaskOnly.Columns.Add("Task Preq");

            }

            DataRow TaskRow;
            TaskRow = TaskOnly.NewRow();
            TaskRow["Task ID"] = txtProjID.Text + "00" + GridView5.Rows.Count.ToString();
            TaskRow["Task Details"] = txtTskDet.Text;
            TaskRow["Task SDate"] = txtTskSdate.Text;
            TaskRow["Task EDate"] = txtTskEdate.Text;
            TaskRow["Task Preq"] = txtTskPrq.Text;
            TaskOnly.Rows.Add(TaskRow);

            GridView5.DataSource = TaskOnly;
            GridView5.DataBind();
            Session.Add("TaskOnly", TaskOnly);

            foreach (GridViewRow r in GridView4.Rows) ////check for checkboxes.. repeat indefinitely
            {
                ////Find the checkbox in the current row being pointed named as grdViewCheck
                CheckBox chk = (CheckBox)r.FindControl("cbSelect");

                ////Print the value in the reponse for the cells[1] which is MMBR_PROM_ID
                if (chk != null && chk.Checked)
                {
                    if (Session["TaskMembers"] != null)
                    {
                        //// Typecasting
                        TaskMembers = (DataTable)Session["TaskMembers"];
                    }
                    else
                    {
                        TaskMembers = new DataTable();
                        TaskMembers.Columns.Add("Task ID");
                        TaskMembers.Columns.Add("Task Assigned");
                        TaskMembers.Columns.Add("Task A to ID");

                    }

                    DataRow MemberRow;
                    MemberRow = TaskMembers.NewRow();
                    MemberRow["Task ID"] = GridView5.Rows[GridView5.Rows.Count - 1].Cells[0].Text;
                    MemberRow["Task Assigned"] = r.Cells[2].Text + " " + r.Cells[3].Text;
                    MemberRow["Task A to ID"] = r.Cells[1].Text;
                    TaskMembers.Rows.Add(MemberRow);

                    GridView3.DataSource = TaskMembers;
                    GridView3.DataBind();
                    Session.Add("TaskMembers", TaskMembers);



                } ////IF-ELSE CHECKBOX END

            }//// END OF FOREACH LOOP-----------------------------------------------------=================================



            //http://asp.net-informations.com/gridview/checkbox.htm --------------------------------============================
        }
    }
}