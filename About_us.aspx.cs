﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        Label1.Text = username;
    }
}