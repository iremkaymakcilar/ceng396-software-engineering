<%@ Page Title="" Language="C#" MasterPageFile="~/After.Master" AutoEventWireup="true" CodeBehind="EditItem.aspx.cs" Inherits="minwin.EditItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="margin-left:200px">
        <form runat="server">
        <table>
           <tr>
               <br />
               <br />
               <asp:Image ID="Image1" runat="server" />
               <br />
               <br />
               <br />
               <b>Title:</b><asp:Label ID="Label1" runat="server" ></asp:Label>
               <br />
               <b>Description: </b><asp:Label ID="Label2" runat="server" ></asp:Label>
               <br />
               <b>Exchange: </b> <asp:CheckBox ID="CheckBox1" runat="server" />
               
           </tr>
        </table>
        <br />
        
        <asp:Button ID="Button1" class="btn btn-primary custom" runat="server" OnClick="Button1_Click" Text="Delete" />
            <br />
            <br />
            <br />           
        <asp:Button ID="Button2" class="btn btn-primary custom" runat="server" OnClick="Button2_Click" Text="Edit" />
        </form>
    </section>
</asp:Content>
