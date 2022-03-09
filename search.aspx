<%@ Page Title="Search" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Search</title>
    <script type="text/javascript">  
        function checkForm() {

            var flag = true;
            flag = checkUsername();
            return flag;
        }
        function checkUsername() {
            var flag = true;
            var n = document.getElementById("userName").value;
            if (n == "") {
                document.getElementById("muserName").value = "Username required";
                document.getElementById("muserName").style.display = "inline";
                flag = false;
            }
            else {
                document.getElementById("muserName").style.display = "none";

            }
            return flag;

        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="height: 100%; border: 1px solid gray; border-radius: 0.25rem;">
            <form id="register" method="post" onsubmit="return checkForm();">
                <table>
                    <tr>
                        <td>Username:</td>
                        <td>
                            <input type="text" id="userName" name="userName" /></td>
                        <td>
                            <input type="text" name="muserName" id="muserName" style="display: none; background-color: cornflowerblue; font-weight: bold;"
                                disabled="disabled" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" name="search" value="Search" />

                        </td>
                    </tr>
                </table>
            </form>

            <h1>User table by username:</h1>
            <%=MyAdoHelper.printDataTable("db.mdb", "SELECT * FROM MyData WHERE UserName = '"+usp+"'")%>
        </div>
    </div>
</asp:Content>

