<%@ Page Title="" Language="C#" MasterPageFile="~/Before.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="minwin.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .textbox {
          
            position: static;
            border: 5px solid #8ed3e6;
            margin: 0;
            text-align: left;
             width: 500px;
            height: 80px;
            font-size:20px 
            

        }
        .Button 
         {
           
            color: #fff;
	        background-color:#8ed3e6;
	        height: 70px;
	        width: 120px;
	        padding:5px;
            border:none 0px transparent;
	        font-size: 20px;
	        font-weight: lighter;
         }
        p {         
 
            color:#8ed3e6;
        }
    </style>
    <section style="margin-left:500px">
        <br />
        <br />
        <br />
        <div>
     <asp:TextBox ID="TextBoxUserName" placeholder="Username" CssClass="textbox" runat="server" ></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
            </div>
    <br />
    <br />
        <div>
        <asp:TextBox ID="TextBoxPass" placeholder="Password" TextMode="Password" CssClass="textbox" runat="server"  ></asp:TextBox>
         <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
            </div>
    <br />
    <br />
        <section style="margin-left:185px">
    <asp:Button ID="Button" runat="server" Text="Login" CssClass="Button" OnClick="Button_Click"   />
            </section>
   <br />
        <br />
        <br />
    </section>
    <br />
    <br />
    <br />

</asp:Content>
