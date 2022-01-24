<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="register" method="post" onsubmit="return bdika()">
        <table>
            <tr>

                <td>שם פרטי</td>

                <td>user name</td>
                <td>
                    <input type="text" id="user_name" name="user_name" size="15" /></td>
            </tr>
            <tr>
                <td>password (must be numaric)</td>
                <td>
                    <input type="text" id="pass" name="pass" size="15" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" id="sub" name="sub" value="send" /></td>
            </tr>
        </table>

    </form>
</asp:Content>

