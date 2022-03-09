<%@ Page Title="Delete" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Delete</title>
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
            <form id="del" method="post" onsubmit="return checkForm();">
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
                            <input type="submit" id="sub" name="sub" value="Delete" />

                        </td>
                    </tr>
                </table>

            </form>
        </div>
    </div>

</asp:Content>

