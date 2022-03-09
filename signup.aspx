<%@ Page Title="Signup" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Signup</title>
    <script type="text/javascript">
        function bdika() {

            var allcheck = true;
            if (!(bdikafirstname())) allcheck = false;
            if (!(bdikalastname())) allcheck = false;
            if (!(bdikauname())) allcheck = false;
            if (!(bdikabyear())) allcheck = false;
            if (!(bdikamonth())) allcheck = false;
            if (!(bdikapass())) allcheck = false;


            return allcheck;
        }
        function bdikafirstname() {
            flag = true;

            var n = document.getElementById("fname").value;
            if (n == "") {
                document.getElementById("mfname").value = "First Name Required";
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
                document.getElementById("mlastname").value = "Last Name Required";
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
                document.getElementById("muname").value = "Username Required";
                document.getElementById("muname").style.display = "inline";
                flag = false;
            }
            else {
                document.getElementById("muname").style.display = "none";
            }
            return flag;
        }

        function bdikapass() {
            flag = true;
            var n = document.getElementById("password").value;
            if (n == "") {
                document.getElementById("mpassword").value = "Password Required";
                document.getElementById("mpassword").style.display = "inline";
                flag = false;
            }
            else {
                document.getElementById("mpassword").style.display = "none";
            }
            return flag;
        }

        function bdikabyear() {
            flag = true;

            var n = document.getElementById("birthyear").value;
            if (n == "") {
                document.getElementById("mbirthyear").value = "Birth Year Required";
                document.getElementById("mbirthyear").style.display = "inline";
                flag = false;
            }
            else
                if (isNaN(n)) {
                    document.getElementById("mbirthyear").value = "Birth Year Required";
                    document.getElementById("mbirthyear").style.display = "inline";
                    flag = false;
                }
                else
                    document.getElementById("mbirthyear").style.display = "none";

            return flag;
        }

        function bdikamonth() {
            flag = true;

            var n = document.getElementById("birthmonth").value;
            if (n == "") {
                document.getElementById("mbirthmonth").value = "Birth Month Required";
                document.getElementById("mbirthmonth").style.display = "inline";
                flag = false;
            }
            else
                if (isNaN(n) || (n < 1 && n > 12)) {
                    document.getElementById("mbirthmonth").value = "Birth Month Required";
                    document.getElementById("mbirthmonth").style.display = "inline";
                    flag = false;
                }
                else
                    document.getElementById("mbirthmonth").style.display = "none";

            return flag;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="height: 100%; border: 1px solid gray; border-radius: 0.25rem;">
            <form id="register" runat="server" method="post" onsubmit="return bdika()">
                <table>
                    <tr>
                        <td>First Name:</td>
                        <td>
                            <input type="text" id="fname" name="fname" size="15" value="<%=fn %>" /></td>
                        <td>
                            <input type="text" name="mfname" id="mfname" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                        </td>
                    </tr>

                    <tr>
                        <td>Last Name:</td>
                        <td>
                            <input type="text" id="lastname" name="lastname" size="15" value="<%=ln %>" /></td>
                        <td>
                            <input type="text" name="mlastname" id="mlastname" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                        </td>
                    </tr>

                    <tr>
                        <td>Username:</td>
                        <td>
                            <input type="text" id="uname" name="uname" size="15" value="<%=un %>" /></td>
                        <td>
                            <input type="text" name="muname" id="muname" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                        </td>
                    </tr>
                    <tr>
                        <td>Birth Year:</td>
                        <td>
                            <input type="text" id="birthyear" name="birthyear" size="15" value="<%=by %>" /></td>
                        <td>
                            <input type="text" name="mbirthyear" id="mbirthyear" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                        </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td>
                            <input type="text" id="password" name="password" size="15" value="<%=pass %>" /></td>
                        <td>
                            <input type="text" name="mpassword" id="mpassword" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
                        </td>
                    </tr>
                    <tr>
                        <td>Birth Month:</td>
                        <td>
                            <input type="text" id="birthmonth" name="birthmonth" size="15" value="<%=bm %>" /></td>
                        <td>
                            <input type="text" name="mbirthmonth" id="mbirthmonth" style="display: none; background-color: Black; font-weight: bold;" disabled="disabled" />
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
                            <input type="submit" id="sub" name="sub" value="Send" />

                        </td>
                    </tr>

                </table>

            </form>
        </div>
    </div>

</asp:Content>
