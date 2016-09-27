<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account_Activated.aspx.cs"
    Inherits="bug_tracker.WebForm6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 504px">
        <asp:Panel ID="Panel2" runat="server" Style="height: 152px;" BackColor="#2F84C4"
            BorderStyle="Solid">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3300"
                Style="z-index: 1; left: 74px; top: 51px; position: absolute" Text="BUG TRACKING SYSTEM"
                Font-Italic="True" Font-Names="Mongolian Baiti"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" Height="295px" BorderStyle="Solid">
            <asp:Image ID="Image1" runat="server" Height="287px" ImageUrl="~/Styles/image/green-beetle.png"
                Width="306px" />
            <asp:Label ID="Label1"  runat="server" Text="Your account has been successfully activated!!! <a href='Login.aspx'>Click Here</a> to login"
              style="position:absolute; top: 229px; left: 406px;" ></asp:Label>
            <asp:Image ID="Image2" runat="server" Height="285px" ImageUrl="~/Styles/image/cartoon-insects-8.gif"
                Width="311px" ImageAlign="Right" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
