<%@ Page Title="" Language="C#" MasterPageFile="~/After.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="minwin.Chat" %>
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
