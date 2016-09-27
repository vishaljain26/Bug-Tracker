<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="bug_tracker.WebForm11" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height: 480px">
<asp:Panel ID="Panel2" runat="server" 
        
        style="z-index: 1; left: 300px; top: 0px; position: absolute; height: 283px; width: 900px" 
        BorderColor="Black" BorderWidth="2" BorderStyle="Inset" BackColor="#ffffc4">
    <asp:Label style="z-index:1; margin-left:50px" ID="Label1" runat="server" Text="Are you Sure you want to delete this account?"></asp:Label>
      
        <br />
    <br />
      
        <asp:Table runat="server" CellSpacing="0" CellPadding="4" Height="20px" BorderColor="Black" 
        BorderStyle="None">
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" ColumnSpan="1" BorderWidth="1" BackColor="Aqua"><asp:Label ID="Label2" runat="server" Text="Username :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox1" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TabIndex="1"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell BackColor="Aqua" Width="300px" ColumnSpan="1" BorderWidth="1"><asp:Label ID="Label3" runat="server" Text="E-Mail ID :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox2" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TabIndex="2"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" BackColor="Aqua" ColumnSpan="1" BorderWidth="1"><asp:Label ID="Label4" runat="server" Text="Real Name :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox3" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TabIndex="3"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" ColumnSpan="1" BackColor="Aqua" BorderWidth="1"><asp:Label ID="Label5" runat="server" Text="Access Level :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox4" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TabIndex="4"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" ColumnSpan="1" BorderWidth="1" BackColor="Aqua"><asp:Label ID="Label6" runat="server" Text="Assigned Project :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox5" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TabIndex="5"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>
       
        </asp:Table>
    
    
    <asp:Button ID="Button1" runat="server" Text="Yes" 
        
        style="z-index:1;position:absolute; top: 221px; left: 303px; width: 94px;" 
        TabIndex="6" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="No"  
        
        
        style="z-index:1;position:absolute; top: 221px; left: 468px; width: 94px; right: 338px;" 
        TabIndex="7" onclick="Button2_Click" />
    
    
    
    </asp:Panel>
   
</div>
</asp:Content>
