using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class signup : System.Web.UI.Page
{


    public string fn = "", ln = "", un = "", msg2 = "", by = "", msg1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlS = "";

        string fileName = "db.mdb"; //שם מסד הנתונים



        if (IsPostBack)
        {
            un = Request.Form["uname"]; //id  מהטופס
            ln = Request.Form["lastname"];
            fn = Request.Form["fname"];
            by = Request.Form["birthyear"];


            int bYear = int.Parse(by);

            string selectQuery = "SELECT * FROM myData WHERE UserName = '" + un + "'";
            if (!MyAdoHelper.IsExist(fileName, selectQuery))
            {
                sqlS = "INSERT INTO myData VALUES ('" + un + "','" + fn + "','" + ln + "'," + bYear + ")";

                MyAdoHelper.DoQuery(fileName, sqlS);
            }
        }
    }
}
