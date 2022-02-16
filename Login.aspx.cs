using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    public string status;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        { 	//ובאקסס  צריך להתאים לשדות שלכם בטופס
            string displayName = Request.Form["userName"];
            string pass = Request.Form["password"];
            string sqlLogin = "SELECT * FROM myData WHERE UserName = '" + displayName +
                "' AND Password = '" + pass + "'";
            if (displayName == "admin" && pass == "admin") { // Manager username and password:
                Session["name"] = "admin";
                // Update application variable counter.
                Application["count"] = 1 + (int)Application["count"];
                Response.Redirect("admin.aspx");
            }
            else if (MyAdoHelper.IsExist("db.mdb", sqlLogin)) //משתמש רשום 
            {
                // System.Data.DataTable table = MyAdoHelper.ExecuteDataTable("db.mdb", sqlLogin);
                // Update session variable display name
                Session["name"] = displayName;
                // Update application variable counter.
                Application["count"] = 1 + (int)Application["count"];
                Response.Redirect("Default.aspx");
            }
            else
            {
                status = "Incorrent Username or password. Check your credentials or click <a href=\"signup.aspx\">here</a> to register as a user.";
            }
        }
    }
}