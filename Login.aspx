<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Login</title>
    <script type="text/javascript">
        function bdika() {
            let total = true;

            total = checkUsername();
            total = checkPassword();

            return total;
        }

        function checkUsername() {
            const val = document.getElementById("userName").value;

            const check = val != null && val != "";

            if (!check) {
                document.getElementById("muserName").style.display = "block"
                document.getElementById("muserName").value = "Enter username"
            }
            else document.getElementById("muserName").style.display = "none"


            return check
        }

        function checkPassword() {
            const val = document.getElementById("password").value;

            const check = val != null && val != "";

            if (!check) {
                document.getElementById("mpassword").style.display = "block"
                document.getElementById("mpassword").value = "Enter password"
            }
            else document.getElementById("mpassword").style.display = "none"


            return check
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="height: 100%; border: 1px solid gray; border-radius: 0.25rem;">
            <form method="post" onsubmit="return bdika()" runat="server">
                <table>
                    <tr>
                        <td>
                            <input type="text" id="userName" name="userName" placeholder="Enter username" />
                        </td>
                        <td>
                            <input type="text" id="muserName" name="muserName" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" id="password" name="password" placeholder="Enter password" />
                        </td>
                        <td>
                            <input type="text" id="mpassword" name="mpassword" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Log-in" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</asp:Content>

