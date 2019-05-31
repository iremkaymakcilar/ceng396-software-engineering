<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminChat.aspx.cs" Inherits="minwin.AdminChat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <form action="/" method="post" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
    </form>
</asp:Content>
