<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

