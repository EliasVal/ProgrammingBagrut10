<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%=MyAdoHelper.printDataTable("db.mdb", "SELECT * FROM MyData") %>

    <h1>פעולות מנהל נוספות</h1>
    <table>
        <tr><td><a href="search.aspx">חיפוש מורכב</a></td></tr>
        <tr><td><a href="update.aspx">עדכון</a></td></tr>
        <tr><td><a href="delete.aspx">מחיקה</a></td></tr>

    </table>
</asp:Content>

