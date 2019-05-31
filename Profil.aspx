<%@ Page Title="" Language="C#" MasterPageFile="~/After.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="minwin.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .textbox {
          
            position: static;
            border: 5px solid #8ed3e6;
            margin: 0;
            text-align: left;
            width: 500px;
            height: 50px;
            font-size:15px 
            

        }
        .Button 
         {
           
            color: #fff;
	        background-color:#8ed3e6;
	        height: 50px;
	        width: 150px;
	        padding:5px;
            border:none 0px transparent;
	        font-size: 20px;
	        font-weight: lighter;
         }
        b {         
            padding:10px;
            color:#8ed3e6;
        }
         .label {
             color: black;
             padding: 10px;            
         }
    </style>
    <form runat="server">
        <div class="container">

            <br /> 
            <asp:Image ID="Image1" runat="server" /><br />
            <br /> 
            <b>First Name: </b><asp:Label ID="LabelFname" runat="server"  CssClass="label" ></asp:Label><br />
            <br /> 
            <b>Last Name: </b><asp:Label ID="LabelLname" runat="server"  CssClass="label"></asp:Label><br />
            <br /> 
            <b>User Name: </b><asp:Label ID="LabelUserName" runat="server"  CssClass="label"></asp:Label><br />
            <br />
            <b>Email: </b><asp:Label ID="LabelEmail" runat="server"  CssClass="label"></asp:Label><br />
            <br />             
            <b>School: </b><asp:Label ID="LabelSchool" runat="server"  CssClass="label"></asp:Label><br />
            <br /> 
            <b>Faculty: </b><asp:Label ID="LabelFac" runat="server"  CssClass="label"></asp:Label><br />
            <br /> 
            <b>Department: </b><asp:Label ID="LabelDep" runat="server"  CssClass="label"></asp:Label><br />
            <br />          
            <asp:Button ID="Button" runat="server" Text="Update Profile" OnClick="Button_Click" CssClass="Button"/>
            <br />  
            <br />  



        </div>
    </form>
</asp:Content>
