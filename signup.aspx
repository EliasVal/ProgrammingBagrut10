<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function bdika() {

            var allcheck = true;
            if (!(bdikafirstname())) allcheck = false;
            if (!(bdikalastname())) allcheck = false;
            if (!(bdikauname())) allcheck = false;
            if (!(bdikabyear())) allcheck = false;
            return allcheck;
        }
        function bdikafirstname() {
            flag = true;

            var n = document.getElementById("fname").value;
            if (n == "") {
                document.getElementById("mfname").value = "חובה שם פרטי";
                document.getElementById("mfname").style.display = "inline";
                flag = false;
            }
            else {
                document.getElementById("mfname").style.display = "none";
            }
            return flag;
        }
        function bdikalastname() {
            flag = true;
            var n = document.getElementById("lastname").value;
            if (n == "") {
                document.getElementById("mlastname").value = "חובה שם משפחה ";
                document.getElementById("mlastname").style.display = "inline";
                flag = false;
            }
            else {
                document.getElementById("mlastname").style.display = "none";
            }
            return flag;
        }

        function bdikauname() {
            flag = true;
            var n = document.getElementById("uname").value;
            if (n == "") {
                document.getElementById("muname").value = "חובה שם משתמש ";
                document.getElementById("muname").style.display = "inline";
                flag = false;
            }
            else {
                document.getElementById("muname").style.display = "none";
            }
            return flag;
        }

        function bdikabyear() {
            flag = true;

            var n = document.getElementById("birthyear").value;
            if (n == "") {
                document.getElementById("mbirthyear").value = "חובה שנת לידהי";
                document.getElementById("mbirthyear").style.display = "inline";
                flag = false;
            }
            else
                if (isNaN(n)) {
                    document.getElementById("mbirthyear").value = "חובה שנת לידהי";
                    document.getElementById("mbirthyear").style.display = "inline";
                    flag = false;
                }
                else
                    document.getElementById("mbirthyear").style.display = "none";

            return flag;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="register" method="post" onsubmit="return bdika()">
        <table>
            <tr>
                <td>שם פרטי</td>
                <td>
                    <input type="text" id="fname" name="fname" size="15" value="<%=fn %>" /></td>
                <td>
                    <input type="text" name="mfname" id="mfname" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td>שם משפחה</td>
                <td>
                    <input type="text" id="lastname" name="lastname" size="15" value="<%=ln %>" /></td>
                <td>
                    <input type="text" name="mlastname" id="mlastname" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td>שם משתמש</td>
                <td>
                    <input type="text" id="uname" name="uname" size="15" value="<%=un %>" /></td>
                <td>
                    <input type="text" name="muname" id="muname" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>לידה שנה</td>
                <td>
                    <input type="text" id="birthyear" name="birthyear" size="15" value="<%=by %>" /></td>
                <td>
                    <input type="text" name="mbirthyear" id="mbirthyear" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td colspan="2"><%=msg1 %></td>
            </tr>
            <tr>
                <td>
                    <h2 style="color: blueviolet"><%=msg2 %></h2>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" id="sub" name="sub" value="שלח" /></td>

            </tr>

        </table>

    </form>

</asp:Content>

