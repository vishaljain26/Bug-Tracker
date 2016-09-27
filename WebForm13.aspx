<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="bug_tracker.WebForm13" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height: 343px">
<asp:Table ID="Table1" runat="server" CellPadding="4" CellSpacing="0" 
        BorderColor="Black" height="120px" Width="1290px" style="margin-top: 0px" >
<asp:TableRow BorderStyle="none" BackColor="white" >
<asp:TableCell BorderWidth="1" Width="200px" Height="10px" Font-Bold="true" ColumnSpan="2" Font-Size="Small" ID="tb1">
    
</asp:TableCell>
</asp:TableRow>
<asp:TableRow>
<asp:TableCell BorderWidth="1" Width="360px" Height="10px" Font-Bold="true" Font-Size="Small" BackColor="aqua" >ASSIGNED TO</asp:TableCell>
<asp:TableCell BorderWidth="1" Width="360px" Height="10px" Font-Bold="true" >
<asp:DropDownList ID="DropDownList1" runat="server" Width="50%"  DataSourceID="SqlDataSource1" DataTextField="username" 
            DataValueField="username" 
            >

    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            SelectCommand="SELECT [username] FROM [new_user]"></asp:SqlDataSource>
</asp:TableCell>
</asp:TableRow>
<asp:TableRow>
<asp:TableCell BorderWidth="1" Width="360px" Height="200px" Font-Bold="true" Font-Size="Small" VerticalAlign="Top" BackColor="AntiqueWhite" >ADD NOTE</asp:TableCell>
<asp:TableCell BorderWidth="1" Width="360px" Height="200px" Font-Bold="true" ><asp:TextBox BackColor="White" ID="TextBox1" runat="server" 
            style="z-index: 1; position: relative;height:75% ;width:98%"  ReadOnly="false" TextMode="MultiLine"></asp:TextBox></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
<asp:TableCell BorderWidth="1" Width="200px" Height="10px" Font-Bold="true" Font-Size="Small" BackColor="Aqua" >VIEW STATUS</asp:TableCell>
<asp:TableCell BorderWidth="1" Width="200px" Height="10px" Font-Bold="true" >
   
    <asp:CheckBox ID="CheckBox1" runat="server" /> <asp:Label ID="Label1" runat="server" Text="Private"></asp:Label></asp:TableCell>
</asp:TableRow>
</asp:Table>
<asp:Button ID="Button1" runat="server"  
        style="position: absolute; top: 303px; left: 604px;" 
        onclick="Button1_Click"/>
</div>
    
</asp:Content>
