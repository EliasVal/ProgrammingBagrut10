using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["sub"] != null)
        {
            string selectQuery;
            string sql;
            selectQuery = "SELECT * FROM MyData WHERE UserName = '" + Request.Form["UserName"] + "'";
            if (MyAdoHelper.IsExist("db.mdb", selectQuery))
            {

                sql = "UPDATE MyData SET Password = ";
                sql += "'" + Request.Form["userPass"] + "' WHERE UserName =";
                sql += "'" + Request.Form["userName"] + "'";


                MyAdoHelper.DoQuery("db.mdb", sql);
            }

        }
    }
}