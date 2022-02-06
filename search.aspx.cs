using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    public string usp = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["search"] != null)
        {
            usp = Request.Form["userName"];
        }
    }
}