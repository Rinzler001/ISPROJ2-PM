﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPROJ2_PrototypeMk2
{
    public partial class PrCreateSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)(Session["Auth"]);

            Session.RemoveAll();
        }
    }
}