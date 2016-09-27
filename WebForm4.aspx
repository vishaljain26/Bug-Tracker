<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="bug_tracker.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 699px; background-color: #D6DBEA;">
    
    
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Styles/image/button/bugtrap_header.jpg" 
        style="z-index: 1; left: 556px; top: 44px; position: absolute; height: 216px; width: 369px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 413px; top: 347px; position: absolute; right: 744px; height: 19px" 
        Text="Username :"></asp:Label>
     
            <asp:TextBox ID="TextBox1" runat="server" 
       style="z-index: 1; left: 565px; top: 344px; position: absolute; height: 22px; width: 382px" 
        AutoPostBack="True" ontextchanged="TextBox1_TextChanged" TabIndex="1"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
             style="z-index: 1; left: 413px; top: 390px; position: absolute; height: 19px" 
            Text="Security Question :"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 565px; top: 390px; position: absolute; width: 381px" 
        TabIndex="2"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        style="z-index: 1; left: 414px; top: 435px; position: absolute; height: 22px" 
        Text="Answer :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 566px; top: 436px; position: absolute; width: 382px" 
        TabIndex="3"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 567px; top: 489px; position: absolute; width: 116px;" 
        Text="Reset Password" onclick="Button1_Click" TabIndex="3" />
        </div>
    
    </form>
</body>
</html>
