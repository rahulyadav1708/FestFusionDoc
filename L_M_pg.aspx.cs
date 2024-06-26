using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class L_M_pg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void red_reg(object sender, EventArgs e)
    {
        Response.Redirect("Reg_pg.aspx");
    }
}