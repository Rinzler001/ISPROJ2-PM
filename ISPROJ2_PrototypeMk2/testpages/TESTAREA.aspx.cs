using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PROJ2_PTE.Class;

namespace ISPROJ2_PrototypeMk2.testpages
{
    public partial class TESTAREA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "";
            foreach (GridViewRow r in GridView1.Rows)
            {
                str = str + r.Cells[0].Text + ", ";
            }
            Label1.Text = str;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}