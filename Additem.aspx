<%@ Page Title="" Language="C#" MasterPageFile="~/After.Master" AutoEventWireup="true" CodeBehind="Additem.aspx.cs" Inherits="minwin.Additem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <section id="form1" runat="server">
    
        <style>
        .textbox {
            position: static;
            border: 5px solid #B3E6F7;
            margin: 0;
            text-align: left;
             width: 200px;
            height: 40px;
            font-size:20px 

        }
        .Button 
         {
            color: #fff;
	        background-color:#B3E6F7;
	        padding:5px;
            border:none 0px transparent;
	        font-size: 12px;
	        font-weight: lighter;
         }
        p {
          
 
            color:#376EA8;
        }
    </style>
        <section style="margin-left:500px" >
            <form runat="server">
    <p>
            <asp:Label ID="Label2" runat="server" Text="Item Title" BorderColor=#B3E6F7 ></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBoxTitle" runat="server"  CssClass="textbox"  Height="45px" Width="304px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Item Description" BorderColor=#B3E6F7></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBoxDescription" runat="server" Height="116px" Width="309px"  CssClass="textbox"></asp:TextBox>
            </p>
                
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" >
           <asp:ListItem Text="Select Type" Value="-1"></asp:ListItem>
           <asp:ListItem Text="book" Value="1"></asp:ListItem>
           <asp:ListItem Text="electronics" Value="2"></asp:ListItem>        
           <asp:ListItem Text="other" Value="3"></asp:ListItem>
    </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceng396ConnectionString %>" SelectCommand="SELECT [name] FROM [itemtype]"></asp:SqlDataSource>
        </p>
    <p>
         <asp:Label ID="Label3" runat="server" Text="Exchange" BorderColor=#B3E6F7></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server" />
        </p>
         <div runat="server">
            <p>
        <b>Select Image1:</b>
                <asp:FileUpload ID="FileUpload1" accept=".png,.jpg,.jpeg" runat="server" Height="54px" Width="509px" /><asp:Label ID="Label4" runat="server" Text="*not optional"></asp:Label>
    </p>
            </div>
    <p>

        &nbsp;</p>
    <p>

        &nbsp;</p>
        <br />
        <br />
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Upload Item" cssclass="Button" OnClick="Button1_Click"/>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </p>
            </form>
    </section>
    </section>

</asp:Content>
