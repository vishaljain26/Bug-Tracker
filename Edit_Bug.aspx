<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit_Bug.aspx.cs" Inherits="bug_tracker.WebForm10" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height: 549px; width: 1534px;">

      <asp:Panel ID="Panel1" runat="server" BorderStyle="Inset" Height="546px" 
        style="margin-bottom: 0px">
          <asp:Table ID="Table1" runat="server"  CellSpacing="0" CellPadding="4"
            BorderColor="Black" Height="477px">
             <asp:TableRow BorderStyle="None" BackColor="Aqua">
                <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" >ID</asp:TableCell>
                <asp:TableCell Width="35px" BorderWidth="1" Font-Bold="true" ColumnSpan="1" >Project</asp:TableCell>
                <asp:TableCell Width="350px" BorderWidth="1" Font-Bold="true" ColumnSpan="1" >Category</asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="350px" Font-Bold="true" ColumnSpan="1" >View Status</asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="350px" Font-Bold="true" ColumnSpan="1" >Date Submitted</asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="350px" Font-Bold="true" ColumnSpan="1" >Last Updated</asp:TableCell>
             </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell  BorderWidth="1" Width="350px" Font-Bold="false" BackColor="LightGray" ColumnSpan="1"><asp:TextBox BackColor="LightGray" ID="TextBox1" runat="server" 
            style="z-index: 1; position: relative;width:98%" ReadOnly="true"></asp:TextBox></asp:TableCell>
                <asp:TableCell Width="350px" BorderWidth="1" Font-Bold="false" ColumnSpan="1" BackColor="White"><asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; position: relative;width:98%"></asp:TextBox></asp:TableCell>
                <asp:TableCell Width="350px" BorderWidth="1" Font-Bold="false" ColumnSpan="1" BackColor="White"><asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; position: relative;width:98%"></asp:TextBox></asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="350px" ColumnSpan="1" BackColor="White"><asp:TextBox ID="TextBox4" runat="server" 
            style="z-index: 1; position: relative;width:98%"></asp:TextBox></asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="350px" Font-Bold="false" BackColor="LightGray" ColumnSpan="1"><asp:TextBox ReadOnly="true" BackColor="LightGray" ID="TextBox5" runat="server" 
            style="z-index: 1; position: relative;width:98%"></asp:TextBox></asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="350px" ColumnSpan="1" BackColor="LightGray"><asp:TextBox ID="TextBox6" runat="server" 
            style="z-index: 1; position: relative;width:98%" ReadOnly="true" BackColor="LightGray"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell ColumnSpan="6" Height="4" BackColor="AntiqueWhite"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Reporter</asp:TableCell><asp:TableCell
                    BorderWidth="1" Width="1255px" ColumnSpan="5" BackColor="White"><asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" BackColor="LightGray" 
            style="z-index: 1; position: relative;width:99.5%"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="1" BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Assigned To</asp:TableCell><asp:TableCell
                    BorderWidth="1" Width="1255px" ColumnSpan="5" BackColor="White"><asp:TextBox ID="TextBox8" runat="server" 
            style="z-index: 1; position: relative;width:99.5%" ReadOnly="true" BackColor="LightGray"></asp:TextBox></asp:TableCell></asp:TableRow>
                   
                 <asp:TableRow>
                <asp:TableCell BorderWidth="1" Width="315px" Font-Bold="true" BackColor="Aqua">Priority</asp:TableCell>
                <asp:TableCell Width="340px" BorderWidth="1" Font-Bold="false" BackColor="White"><asp:DropDownList ID="DropDownList2" runat="server" 
            style="z-index: 1; position: relative;width:98%"> 
            <asp:ListItem>None</asp:ListItem>
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
            <asp:ListItem>Urgent</asp:ListItem>
            <asp:ListItem>Immediate</asp:ListItem></asp:DropDownList></asp:TableCell>
                <asp:TableCell Width="340px" BorderWidth="1" Font-Bold="true" BackColor="Aqua">Severity</asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="340px" Font-Bold="false" BackColor="White"><asp:DropDownList ID="DropDownList3" runat="server" 
            style="z-index: 1; position: relative;width:98%">
            <asp:ListItem>Tweak</asp:ListItem>
            <asp:ListItem>Minor</asp:ListItem>
            <asp:ListItem>Major</asp:ListItem>
            <asp:ListItem>Crash</asp:ListItem>
            <asp:ListItem>Block</asp:ListItem>
            <asp:ListItem>Feature</asp:ListItem>
            <asp:ListItem>Trivial</asp:ListItem>
            <asp:ListItem>Text</asp:ListItem>
        </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="340px" Font-Bold="true" BackColor="Aqua">Producibility</asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="340px" Font-Bold="false" BackColor="White"><asp:DropDownList ID="DropDownList4" runat="server" 
            style="z-index: 1; position: relative;width:98%">
            <asp:ListItem>Always</asp:ListItem>
                    <asp:ListItem>Sometimes</asp:ListItem>
                    <asp:ListItem>Random</asp:ListItem>
                    <asp:ListItem>Have not tried</asp:ListItem>
                    <asp:ListItem>Unable to Reproduce</asp:ListItem>
                    <asp:ListItem>N/A</asp:ListItem>
                    </asp:DropDownList>
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell BorderWidth="1" Width="260px" Font-Bold="true" BackColor="Aqua" ColumnSpan="1" >Status</asp:TableCell>
                <asp:TableCell Width="277px" BorderWidth="1" Font-Bold="false" BackColor="LightGray"><asp:TextBox ID="TextBox12" runat="server" 
            style="z-index: 1; position: relative;width:98%" ReadOnly="true" BackColor="LightGray"></asp:TextBox></asp:TableCell>
                <asp:TableCell Width="280px" BorderWidth="1" Font-Bold="true" BackColor="Aqua">Resolution</asp:TableCell>
                <asp:TableCell BackColor="White" BorderWidth="1" Width="280px" Font-Bold="false"><asp:TextBox ID="TextBox13" runat="server" 
            style="z-index: 1; position: relative;width:98%"></asp:TextBox></asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="587px" Font-Bold="true" ColumnSpan="2" BackColor="White"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell BorderWidth="1" Width="315px" Font-Bold="true" BackColor="Aqua">Platform</asp:TableCell>
                <asp:TableCell Width="340px" BackColor="White" BorderWidth="1" Font-Bold="false"><asp:TextBox ID="TextBox14" runat="server" 
            style="z-index: 1; position: relative;width:98%"></asp:TextBox></asp:TableCell>
                <asp:TableCell Width="340px" BorderWidth="1" Font-Bold="true" BackColor="Aqua">OS</asp:TableCell>
                <asp:TableCell BorderWidth="1" BackColor="White" Width="340px" Font-Bold="false"><asp:TextBox ID="TextBox15" runat="server" 
            style="z-index: 1; position: relative;width:98%"></asp:TextBox></asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="340px" Font-Bold="true" BackColor="Aqua">O.S Version</asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="340px" BackColor="White" Font-Bold="false"><asp:TextBox ID="TextBox16" runat="server" 
            style="z-index: 1; position: relative;width:98%"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell ColumnSpan="6" BackColor="AntiqueWhite" Height="4"></asp:TableCell>
            </asp:TableRow>   
             <asp:TableRow>
                <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Summary</asp:TableCell><asp:TableCell
                    BorderWidth="1" Width="1255px" ID="summary" Font-Bold="false" BackColor="White" ColumnSpan="5"><asp:TextBox ID="TextBox17" runat="server" 
            style="z-index: 1; position: relative;width:99.5%"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Description</asp:TableCell><asp:TableCell
                    BorderWidth="1" Width="1255px" ID="description" BackColor="White" Font-Bold="false" ColumnSpan="5"><asp:TextBox ID="TextBox18" runat="server" 
            style="z-index: 1; position: relative;width:99.5%"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" Height="200px" VerticalAlign="Top" BackColor="Aqua">Steps To Reproduce</asp:TableCell><asp:TableCell
                    BorderWidth="1" Width="1255px" ID="steps_to_reproduce" Font-Bold="false" BackColor="White"  VerticalAlign="Top" ColumnSpan="5"><asp:TextBox TextMode="MultiLine" Height="190px" ID="TextBox19" runat="server" 
            style="z-index: 1; position: relative;width:99.5%"></asp:TextBox></asp:TableCell></asp:TableRow>
        </asp:Table>    
       
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Ridge" BorderColor="Black" BackColor="#aa0000"
            
            
          style="z-index: 1; left: 1px; top: 520px; position: absolute; height: 26px; width: 1490px">
        <asp:Button ID="Button1" runat="server" Text="Update" Height="25px" 
            Width="79px" onclick="Button1_Click" style="z-index:1;position:relative;left:262px" />

        </asp:Panel>
</div>
</asp:Content>
