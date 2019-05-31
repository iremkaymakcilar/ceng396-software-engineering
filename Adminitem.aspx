<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminitem.aspx.cs" Inherits="minwin.Adminitem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section style="margin-left:200px">
        <asp:Image ID="Image1" runat="server" /><br />
        <br />
        <br />
               <b><h3>Title:</h3></b><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               <br />
               <b><h3>Description: </h3></b><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
               <br />
               
                   
               
                           
        <br />
        <form action="/" method="post" runat="server">
            <b>Exchange: </b> <asp:CheckBox ID="CheckBox1" runat="server" />
            <br /><br /><br />
        <asp:Button ID="Button1" class="btn btn-primary" Width="200px" runat="server" OnClick="Button1_Click" Text="Send Message To Owner" />
            <br />
            <br />
        </form>
    </section>
</asp:Content>
