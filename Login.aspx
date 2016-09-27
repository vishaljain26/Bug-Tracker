<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bug_tracker.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script language="javascript" type="text/javascript">
        function OnWindowLoad() {
            document.getElementById("TextBox1").focus();
        }
    </script>
    <title></title>
</head>
<body style="background-color: #D4DAE9;" onload="OnWindowLoad()">
    <form id="form1" runat="server">
    <div runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/image/button/bugtrap_header.jpg"
            Style="z-index: 1; left: 490px; top: 79px; position: absolute; height: 193px;
            width: 309px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"
            Style="z-index: 1; left: 588px; top: 295px; position: absolute" Text="LOGIN"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 1;
            left: 437px; top: 356px; position: absolute" Text="User Name : "></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 1;
            left: 438px; top: 387px; position: absolute" Text="Password : "></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 1;
            left: 437px; top: 416px; position: absolute; margin-bottom: 0px" Text="Remember Me : "></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Style="z-index: 1; left: 639px;
            top: 416px; position: absolute" Text="   Uncheck if on a shared computer" TabIndex="3" />
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 1; left: 643px; top: 357px;
            position: absolute; width: 241px" TabIndex="1" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 1; left: 643px; top: 388px;
            position: absolute; width: 239px" TextMode="Password" TabIndex="2" 
            AutoCompleteType="Disabled"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Style="z-index: 1; left: 835px; top: 479px;
            position: absolute" Text="Login" OnClick="Button2_Click" TabIndex="4" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Forgot_Password.aspx" Style="z-index: 1;
            left: 441px; top: 473px; position: absolute" TabIndex="5">Forgot your Password ?</asp:HyperLink>
    </div>
    </form>
</body>
</html>
