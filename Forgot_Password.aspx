<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs"
    Inherits="bug_tracker.WebForm4" %>

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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="height: 699px; background-color: #D6DBEA;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/image/button/bugtrap_header.jpg"
            Style="z-index: 1; left: 556px; top: 44px; position: absolute; height: 216px;
            width: 369px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 1; left: 413px;
            top: 347px; position: absolute; right: 431px; height: 19px" 
            Text="Username :"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Style="z-index: 1;
            left: 413px; top: 390px; position: absolute; height: 19px" Text="Security Question :"></asp:Label>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            
            <ContentTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 1; left: 565px; top: 347px;
                    position: absolute; height: 17px; width: 382px" OnTextChanged="TextBox1_TextChanged"
                    TabIndex="1" AutoPostBack="true" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 1; left: 565px; top: 390px;
                    position: absolute; width: 381px"></asp:TextBox>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Style="z-index: 1;
            left: 414px; top: 435px; position: absolute; height: 22px" Text="Answer :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 1; left: 566px; top: 436px;
            position: absolute; width: 382px" TabIndex="2" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Style="z-index: 1; left: 567px; top: 489px;
            position: absolute; width: 116px;" Text="Reset Password" OnClick="Button1_Click"
            TabIndex="2" />
    </div>
    </form>
</body>
</html>
