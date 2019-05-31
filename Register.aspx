<%@ Page Title="" Language="C#" MasterPageFile="~/Before.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="minwin.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .textbox {
            position: static;
            border: 5px solid #8ed3e6;
            margin: 0;
            text-align: left;
            width: 500px;
            height: 80px;
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
    <br />
    <br />
    <br />
    <section style="margin-left: 500px">

        
                <asp:TextBox ID="TextBoxUserName" placeholder="User Name" CssClass="textbox" runat="server"></asp:TextBox>
        
        <br />
        <br />
        
                <asp:TextBox ID="TextBoxEmail" placeholder="Email" CssClass="textbox" type="email" runat="server"></asp:TextBox>
        
        <br />
        <br />
        
                <asp:TextBox ID="TextBoxFname" placeholder="First Name" CssClass="textbox" runat="server"></asp:TextBox>

        
        <br />

        <br />
        
                <asp:TextBox ID="TextBoxLname" placeholder="Last Name" CssClass="textbox" runat="server"></asp:TextBox>

        
        <br />
        <br />
        
                 <asp:Label ID="Label3" runat="server" Text="School" Color="#8ed3e6" Font-Size=20px ></asp:Label>
       &nbsp; &nbsp;&nbsp;&nbsp;
       <asp:DropDownList ID="DropDownList1" runat="server" Height="45px" Width="423px" >
           <asp:ListItem Text="Select your school" Value="-1"></asp:ListItem>
           <asp:ListItem Text="Cankaya University" Value="1"></asp:ListItem>
           <asp:ListItem Text="Baskent University" Value="2"></asp:ListItem>
           <asp:ListItem Text="Atılım University" Value="3"></asp:ListItem>
           <asp:ListItem Text="Gazi University" Value="4"></asp:ListItem>
           <asp:ListItem Text="other" Value="5"></asp:ListItem>
    </asp:DropDownList>
        
        <br />

        <br />
        
                 <asp:Label ID="Label4" runat="server" Text="Faculty" Color="#8ed3e6" Font-Size=20px  ></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;
       <asp:DropDownList ID="DropDownList2" runat="server" Height="45px" Width="424px" >
           <asp:ListItem Text="Select Faculty" Value="-1"></asp:ListItem>
           <asp:ListItem Text="Faculty of Engineering" Value="1"></asp:ListItem>
           <asp:ListItem Text="Faculty of Education" Value="2"></asp:ListItem>
           <asp:ListItem Text="Faculty of Arts and Sciences" Value="3"></asp:ListItem>
           <asp:ListItem Text="Faculty of Economic and Administrative Sciences" Value="4"></asp:ListItem>
           <asp:ListItem Text="other" Value="5"></asp:ListItem>
    </asp:DropDownList>
        
        <br />
        <br />
       
                 <asp:Label ID="Label5" runat="server" Text="Type" Color="#8ed3e6" Font-Size=20px  ></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:DropDownList ID="DropDownList3" runat="server" Height="45px" Width="426px" >
           <asp:ListItem Text="Select Type" Value="-1"></asp:ListItem>
           <asp:ListItem Text="Department of Computer Engineering" Value="1"></asp:ListItem>
           <asp:ListItem Text="Department of Industrial Engineering" Value="2"></asp:ListItem>
           <asp:ListItem Text="Department of Mechanical Engineering" Value="3"></asp:ListItem>
           <asp:ListItem Text="Department of Economics" Value="4"></asp:ListItem>
           <asp:ListItem Text="other" Value="5"></asp:ListItem>
    </asp:DropDownList>        
        <br />
        <br />                   
                <asp:TextBox ID="TextBoxPass" placeholder="Password" CssClass="textbox" type="password" runat="server"></asp:TextBox>      
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
            <asp:Button ID="Button1" CssClass="Button" runat="server" Text="Register" OnClick="Button1_Click" />
        </div>
    </section>
    <br />
    <br />
    <br />
</asp:Content>
