<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="bug_tracker.WebForm5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <script language="javascript" type="text/javascript">
        function OnWindowLoad() {
            document.getElementById("TextBox1").focus();
        }
    </script>
    <title></title>
</head>
<body  onload="OnWindowLoad()">
    <form id="form1" runat="server">
    <div style="height: 699px; background-color: #D4DAE9;">
    
    
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Styles/image/button/bugtrap_header.jpg" 
        style="z-index: 1; left: 540px; top: 76px; position: absolute; height: 208px; width: 380px" />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
        style="z-index: 1; left: 389px; top: 326px; position: absolute" 
        Text="Change password :"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 599px; top: 327px; position: absolute; width: 251px" 
        TabIndex="1" TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
        style="z-index: 1; left: 388px; top: 368px; position: absolute" 
        Text="Confirm Password :"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 600px; top: 368px; position: absolute; width: 249px" 
            TabIndex="2" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Font-Bold="True" 
        onclick="Button2_Click" 
        style="z-index: 1; left: 604px; top: 436px; position: absolute; width: 113px; right: 530px;" 
        Text="Change" TabIndex="3" />
        </div>
    
    </form>
</body>
</html>
