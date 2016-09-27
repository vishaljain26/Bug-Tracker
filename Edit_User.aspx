<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit_User.aspx.cs" Inherits="bug_tracker.WebForm12" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 332px">

        <asp:Panel ID="Panel2" runat="server" BorderWidth="1" BorderColor="Black" 
            
            
            style="z-index: 1; left: 230px; top: 10px; position: absolute; height: 298px; width: 923px">
            
            <asp:Label ID="Label1" runat="server" Text="Edit Account :" Font-Bold="true"></asp:Label>
            
         <asp:Table ID="Table1" runat="server" CellSpacing="0" CellPadding="4" Height="20px" BorderColor="Black" 
        BorderStyle="None">
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" ColumnSpan="1" BorderWidth="1" BackColor="Aqua"><asp:Label ID="Label2" runat="server" Text="Username :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White" ID="username">
            
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell BackColor="Aqua" Width="300px" ColumnSpan="1" BorderWidth="1"><asp:Label ID="Label3" runat="server" Text="Password :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox2" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TextMode="Password" TabIndex="1"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Check to Change Password" />
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" BackColor="Aqua" ColumnSpan="1" BorderWidth="1"><asp:Label ID="Label4" runat="server" Text="Confirm Password :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox3" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TextMode="Password" TabIndex="2"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" ColumnSpan="1" BackColor="Aqua" BorderWidth="1"><asp:Label ID="Label5" runat="server" Text="Email ID :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox4" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TabIndex="3"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" ColumnSpan="1" BorderWidth="1" BackColor="Aqua"><asp:Label ID="Label6" runat="server" Text="Real Name :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White">
            <asp:TextBox ID="TextBox5" runat="server" style="z-index:1; width:50%;position:relative;height:98%" TabIndex="4"></asp:TextBox>
        </asp:TableCell>
        </asp:TableRow>
       <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" ColumnSpan="1" BorderWidth="1" BackColor="Aqua"><asp:Label ID="Label7" runat="server" Text="Project Access Level :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White" ID="project_access_level">
            
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderStyle="None" BorderColor="Black">
        <asp:TableCell Width="300px" ColumnSpan="1" BorderWidth="1" BackColor="Aqua"><asp:Label ID="Label8" runat="server" Text="Access Level :" Font-Bold="true"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px" ColumnSpan="1" BorderWidth="1" BackColor="White" ID="access_level">
           
        </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
        <asp:Button ID="Button1" runat="server" Text="Update User" 
                
                style="z-index:1;position:absolute; top: 255px; left: 310px; width: 127px;" 
                onclick="Button1_Click" TabIndex="5" />
        </asp:Panel>

</div>
</asp:Content>
