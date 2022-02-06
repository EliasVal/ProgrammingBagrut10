<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="del" method="post" onsubmit="return checkForm();">
        <table>
            <tr>
                <td>שם משתמש:</td>
                <td>
                    <input type="text" id="userName" name="userName" /></td>
                <td>
                    <input type="text" name="muserName" id="muserName" style="display: none; background-color: cornflowerblue; font-weight: bold;"
                        disabled="disabled" /></td>
            </tr>
        </table>

        <input type="submit" name="delete" value="מחיקהן" />
    </form>

</asp:Content>

