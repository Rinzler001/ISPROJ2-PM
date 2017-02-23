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
            
            if (Session["Auth"] == null && Session["AuthWho"] == null && Session["AuthWhat"] == null)
            {
                Response.Redirect("Landing.aspx");
            }
            else if (Session["Auth"] != null && Session["AuthWho"] != null && Session["AuthWhat"].ToString().Trim() != "P_Supervisor")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblAuth.Text = (string)(Session["Auth"]);
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Server=localhost;Database=ISPROJ2;Trusted_Connection=True;";
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT TOP 1 proj_id FROM Project ORDER BY proj_id DESC", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                int pid = (int.Parse(dt.Rows[0][0].ToString()) + 1);

                txtProjID.Text = "PPESI-" + DateTime.Now.ToString("yyyy") +"-"+ pid.ToString().PadLeft(3,'0');
                //Counter.Value = (pid * 10).ToString();
            }
         
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string projid = txtProjID.Text;
            Business.createProj(txtProjID.Text, txtProjTitle.Text, txtRefNum.Text, txtPrDesc.Text, DDClient.SelectedValue, 
                Session["Auth"].ToString(), DDProjLead.SelectedValue, txtStDate.Text, txtEnDate.Text, (DataTable)Session["TaskMembers"], 
                (DataTable)Session["TaskOnly"]);

            string BOMID = Business.insrtBOM("BOM-O-" + projid.Substring(projid.Length - 3), Session["Auth"].ToString(), txtProjID.Text);

            foreach (GridViewRow r in GridView1.Rows)
            {
                for (int qty = 0; qty < int.Parse(r.Cells[2].Text); qty++)
                {
                    Business.insrtBD(BOMID, r.Cells[3].Text);
                }
            }


            Session.Remove("TaskOnly");
            Session.Remove("TaskMembers");
            Session.Remove("ProjItems");

            Response.Redirect("dashboard.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataTable TaskMembers;
            DataTable TaskOnly;
            DataRow TaskRow;
            DataRow MemberRow;

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

            string projid = txtProjID.Text;
            TaskRow = TaskOnly.NewRow();
            //TaskRow["Task ID"] = txtProjID.Text[txtProjID.Text.Length - 3] + Counter.Value.PadLeft(3, '0');
            TaskRow["Task ID"] = projid.Substring(projid.Length - 3) + Counter.Value.PadLeft(3, '0');
            TaskRow["Task Details"] = txtTskDet.Text;
            TaskRow["Task SDate"] = txtTskSdate.Text;
            TaskRow["Task EDate"] = txtTskEdate.Text;
            TaskRow["Task Preq"] = txtTskPrq.Text;
            TaskOnly.Rows.Add(TaskRow);

            //TaskOnly.Columns["Task ID"].AutoIncrement = true;
            //TaskOnly.Columns["Task ID"].AutoIncrementSeed = 1;
            //TaskOnly.Columns["Task ID"].AutoIncrementStep = 1;


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
                        TaskMembers.Columns.Add("Task Assigned ID");

                    }

                   
                    MemberRow = TaskMembers.NewRow();
                    MemberRow["Task ID"] = GridView5.Rows[GridView5.Rows.Count - 1].Cells[1].Text;
                    MemberRow["Task Assigned"] = r.Cells[2].Text;
                    MemberRow["Task Assigned ID"] = r.Cells[1].Text;
                    TaskMembers.Rows.Add(MemberRow);

                    GridView3.DataSource = TaskMembers;
                    GridView3.DataBind();
                    Session.Add("TaskMembers", TaskMembers);
                    
                    


                } ////IF-ELSE CHECKBOX END

            }//// END OF FOREACH LOOP-----------------------------------------------------=================================

            
            Counter.Value = (Convert.ToInt32(Counter.Value) + 1).ToString();
            //http://asp.net-informations.com/gridview/checkbox.htm --------------------------------============================
        }

        protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //TaskOnly.Rows[e.RowIndex].Delete();
            //GridView5.DeleteRow(e.RowIndex);
            DataTable dt = (DataTable)Session["TaskOnly"];
            DataTable dt2 = (DataTable)Session["TaskMembers"];

            for (int i = dt2.Rows.Count - 1; i >= 0; i--)
            {
                DataRow dr = dt2.Rows[i];
                if (dr["Task ID"].Equals(dt.Rows[e.RowIndex][0].ToString()))
                    dr.Delete();
            }
            dt2.AcceptChanges();

            dt.Rows.RemoveAt(e.RowIndex);
            dt.AcceptChanges();

            GridView3.DataSource = dt2;
            GridView3.DataBind();

            GridView5.DataSource = dt;
            GridView5.DataBind();
            Session.Add("TaskOnly", dt);
            Session.Add("TaskMembers", dt2);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Add members to GridView
            DataTable Items;
            GridViewRow row = null;
            bool Duplicate = false;

            if (Session["ProjItems"] != null)
            {
                // Typecasting
                Items = (DataTable)Session["ProjItems"];

                foreach (GridViewRow r in GridView1.Rows)//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa
                {
                    //if (r.Cells[3].Text.Trim().Equals(ComboBox1.Text))
                    if (ComboBox1.SelectedItem.Text.Trim().Equals(r.Cells[3].Text.Trim())) /*String.Equals(ComboBox1.Text, r.Cells[3].Text, StringComparison.InvariantCultureIgnoreCase)*/
                    {
                        //Items = (DataTable)Session["ProjItems"];
                        Duplicate = true;
                        row = r;
                        break;//nooo d
                    }
                } //foreach END ---------AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

                if (Duplicate)
                {
                    string qty = (int.Parse(Items.Rows[row.RowIndex][0].ToString()) + int.Parse(TextBox10.Text)).ToString();
                    Items.Rows[row.RowIndex][0] = qty;
                    Items.AcceptChanges();
                } else
                {
                    DataRow ItemRow;
                    ItemRow = Items.NewRow();
                    ItemRow["QTY."] = TextBox10.Text;
                    ItemRow["Item Code"] = ComboBox1.SelectedItem.Text;
                    ItemRow["Item Description"] = ComboBox1.SelectedValue;
                    
                    Items.Rows.Add(ItemRow);
                }
            }
            else
            {
                Items = new DataTable();
                Items.Columns.Add("QTY.");
                Items.Columns.Add("Item Code");
                Items.Columns.Add("Item Description");

                DataRow ItemRow;
                ItemRow = Items.NewRow();
                ItemRow["QTY."] = TextBox10.Text;
                ItemRow["Item Code"] = ComboBox1.SelectedItem.Text;
                ItemRow["Item Description"] = /*ComboBox1.SelectedValue;*/ Label11.Text;
                Items.Rows.Add(ItemRow);
            }


            GridView1.DataSource = Items;
            GridView1.DataBind();

            Session.Add("ProjItems", Items);
        }

        protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Business get = new Business();
            Label11.Text = get.getItemDesc(ComboBox1.SelectedValue.ToString());
        }

        protected void ComboBox1_TextChanged(object sender, EventArgs e)
        {
            Business get = new Business();
            Label11.Text = get.getItemDesc(ComboBox1.SelectedValue.ToString());
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)Session["ProjItems"];
            dt.Rows.RemoveAt(e.RowIndex);
            dt.AcceptChanges();

            GridView1.DataSource = dt;
            GridView1.DataBind();

            Session.Add("ProjItems", dt);
        }
    }
}