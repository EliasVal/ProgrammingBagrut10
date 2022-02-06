using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class delete : System.Web.UI.Page
{
    public string fileName = "db.mdb";
    public string status = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["delete"] != null)
        {
            string selectQuery;
            string sql;
            selectQuery = "SELECT * FROM MyData WHERE UserName = '" + Request.Form["userName"] + "'";
            if (MyAdoHelper.IsExist(fileName, selectQuery))
            {
                sql = "DELETE FROM MyData WHERE UserName ='" + Request.Form["userName"] + "'";
                MyAdoHelper.DoQuery(fileName, sql);

                status = "User " + Request.Form["display"] + " deleted successfully";
            }
            else
            {
                status = "Could not find user '" + Request.Form["userName"] + "'";
            }
        }
    }

}