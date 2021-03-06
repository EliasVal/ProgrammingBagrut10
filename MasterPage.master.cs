using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage {
    public string counter;
    protected void Page_Load(object sender, EventArgs e) {
        if (Application["count"] == null) {
            Application["count"] = 0;
        }

        if (Session["name"] == null || Session["name"].ToString() == "") {
            Session["name"] = "Guest";
        }

        if (Session["name"].ToString() == "Guest") {
            signOut.Visible = false;
            admin.Visible = false;
            login.Visible = true;
            signup.Visible = true;
        }
        else {
            if (Session["name"].ToString() == "admin") admin.Visible = true;
            else admin.Visible = false;

            signOut.Visible = true;
            login.Visible = false;
            signup.Visible = false;
        }

        counter = Application["count"].ToString();
    }
}
