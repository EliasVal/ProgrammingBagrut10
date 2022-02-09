<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function checkForm() {
            var flag = true;
            flag = checkUsername();
            flag = checkPass();
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

        function checkPass() {
            var flag = true;
            var n = document.getElementById("userPass").value;
            if (n == "") {
                document.getElementById("muserPass").value = "Password required";
                document.getElementById("muserPass").style.display = "inline";
                flag = false;
            }
            else {
                document.getElementById("muserPass").style.display = "none";

            }
            return flag;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                <td>New password:</td>
                <td>
                    <input type="text" id="userPass" name="userPass" /></td>
                <td>
                    <input type="text" name="muserPass" id="muserPass" style="display: none; background-color: cornflowerblue; font-weight: bold;"
                        disabled="disabled" /></td>
            </tr>
            <input type="submit" name="update" value="עדכון" />
        </table>
    </form>
</asp:Content>

