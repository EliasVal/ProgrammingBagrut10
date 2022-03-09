<%@ Page Title="Admin" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Admin</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <div style="height: 100%; border: 1px solid gray; border-radius: 0.25rem;">
            <h1>Users:</h1>
            <%=MyAdoHelper.printDataTable("db.mdb", "SELECT * FROM MyData") %>

            <h1>Admin Actions:</h1>
            <table>
                <tr>
                    <td><a href="search.aspx">Adv. Search</a></td>
                </tr>
                <tr>
                    <td><a href="update.aspx">Update</a></td>
                </tr>
                <tr>
                    <td><a href="delete.aspx">Delete</a></td>
                </tr>

            </table>
        </div>
    </div>
</asp:Content>

