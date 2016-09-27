<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs" Inherits="bug_tracker._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 286px; top: 20px; position: absolute; width: 209px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 82px; top: 19px; position: absolute; height: 18px" 
        Text="User Name : "></asp:Label>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 83px; top: 54px; position: absolute" 
        Text="Password : "></asp:Label>
</p>
<p>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 80px; top: 88px; position: absolute" 
        Text="Change Password : "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 287px; top: 52px; position: absolute; width: 207px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label7" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 83px; top: 123px; position: absolute" Text="E-Mail : "></asp:Label>
</p>
<p>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 83px; top: 156px; position: absolute" 
        Text="Real Name : "></asp:Label>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 83px; top: 187px; position: absolute" 
        Text="Access Level : "></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        style="z-index: 1; left: 291px; top: 192px; position: absolute; width: 200px">
        <asp:ListItem>Viewer</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
        <asp:ListItem>Reporter</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <asp:Label ID="Label10" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 84px; top: 218px; position: absolute" 
        Text="Project Access Level : "></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        style="z-index: 1; left: 292px; top: 221px; position: absolute; width: 197px">
        <asp:ListItem>Viewer</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Reporter</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <asp:Label ID="Label11" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 83px; top: 254px; position: absolute" 
        Text="Assigned Project : "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 288px; top: 87px; position: absolute; width: 202px"></asp:TextBox>
    <asp:TextBox ID="TextBox6" runat="server" 
        style="z-index: 1; left: 286px; top: 255px; position: absolute; width: 200px"></asp:TextBox>
</p>
<p>
    <asp:TextBox ID="TextBox4" runat="server" 
        style="z-index: 1; left: 289px; top: 123px; position: absolute; width: 202px"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" 
        style="z-index: 1; left: 288px; top: 155px; position: absolute; width: 204px"></asp:TextBox>
</p>
</asp:Content>
