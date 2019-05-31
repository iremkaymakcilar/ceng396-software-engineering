<%@ Page Title="" Language="C#" MasterPageFile="~/After.Master" AutoEventWireup="true" CodeBehind="ProfilUp.aspx.cs" Inherits="minwin.ProfilUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        .textbox {
            position: static;
            border: 5px solid #8ed3e6;
            margin: 0;
            text-align: left;
            width: 400px;
            height: 60px;
            font-size: 20px
        }

        .Button {
            color: #fff;
            background-color: #8ed3e6;
            height: 70px;
            width: 120px;
            padding: 5px;
            border: none 0px transparent;
            font-size: 20px;
            font-weight: lighter;
            
        }
         .label {
             color: black;
             padding: 10px;            
         }
        p {
            color: #8ed3e6;
        }
        

        b {
            font-size: 20px;
            color: #8ed3e6;
        }
    </style>
    <br />
    <br /> 
    <form action="/" method="post" runat="server">
        <asp:Image ID="Image1" runat="server" /><br />
            <br /> 
            <b>First Name: </b><asp:Label ID="LabelFname" runat="server" Text="Label" CssClass="label" ></asp:Label><br />
            <br /> 
            <b>Last Name: </b><asp:Label ID="LabelLname" runat="server" Text="Label" CssClass="label"></asp:Label><br />
            <br /> 
            <b>User Name: </b><asp:Label ID="LabelUserName" runat="server" Text="Label" CssClass="label"></asp:Label><br />
            <br />
            <b>Email: </b><asp:Label ID="LabelEmail" runat="server" Text="Label" CssClass="label"></asp:Label><br />
            <br />             
            <b>School: </b><asp:Label ID="LabelSchool" runat="server" Text="Label" CssClass="label"></asp:Label><br />
            <br /> 
            <b>Faculty: </b><asp:Label ID="LabelFac" runat="server" Text="Label" CssClass="label"></asp:Label><br />
            <br /> 
            <b>Department: </b><asp:Label ID="LabelDep" runat="server" Text="Label" CssClass="label"></asp:Label><br />
            <br />
    <br />
    <b>New Username:</b><asp:TextBox ID="TextBoxUserName"  CssClass="textbox" runat="server"></asp:TextBox>              
        <br /> 
    <br />
    <b>New Password</b><asp:TextBox ID="TextBoxPass" p CssClass="textbox" type="password" runat="server"></asp:TextBox>        
        <br />
        <br />       
            <b>Select Image:</b>
                <asp:FileUpload ID="FileUpload1" accept=".png,.jpg,.jpeg" runat="server" Height="54px" Width="509px" />                        
        <br />        
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>        
        <div style="margin-left: 10px">
            <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label></div>
        <br>
        <div style="margin-left: 185px">
            <asp:Button ID="Button1" CssClass="Button" runat="server" Text="Update" OnClick="Button1_Click" />
        </div>
        </form>
            
    
    
</asp:Content>

