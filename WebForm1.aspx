<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs" Inherits="bug_tracker.WebForm1" %>

    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div style="height: 100%" >
 

    <asp:Panel ID="Panel1" runat="server" Width="70%" Height="40%"  
        BorderStyle="Solid" Visible="true" 
        style="margin-top: 0px ; margin-left: 300px" TabIndex="1" 
         BackColor="#669999" BorderColor="#003366" DefaultButton="Button1" 
         oninit="Panel1_Init" >
        <asp:Label ID="Label4" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 380px; top: 19px; position: absolute; height: 18px; margin-top: 0px; margin-left: 0px; width: 93px;" 
        Text="User Name : "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 586px;
         top: 20px; position: absolute; width: 202px; margin-top: 0px; margin-left: 0px" 
         TabIndex="1"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 380px; top: 54px; position: absolute;  margin-top: 0px; margin-left: 0px; width: 74px; height: 27px;" 
        Text="Password : "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 587px; top: 52px; position: absolute; width: 201px; margin-top: 0px; margin-left: 0px" 
        TabIndex="2" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 379px; top: 88px; position: absolute; margin-top: 0px; margin-left: 0px; width: 140px;" 
        Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 586px; top: 87px; position: absolute; width: 202px; margin-top: 0px; margin-left: 0px" 
        TabIndex="3" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True"
        style="z-index: 1; left: 380px; top: 124px; position: absolute; margin-top: 0px; margin-left: 0px; width: 69px;" 
        Text="E-Mail : "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" 
        style="z-index: 1; left: 586px; top: 123px; position: absolute; width: 202px; margin-top: 0px; margin-left: 0px" 
        TabIndex="4"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 380px; top: 156px; position: absolute; margin-top: 0px; margin-left: 0px; width: 90px;" 
        Text="Real Name : "></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"
        style="z-index: 1; left: 585px; top: 155px; position: absolute; width: 204px; margin-top: 0px; margin-left: 0px" 
        TabIndex="5"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 380px; top: 191px; position: absolute; height: 21px; width: 135px" 
            Text="Security Question :"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" 
            style="z-index: 1; left: 586px; top: 191px; position: absolute; height: 19px; width: 350px" 
            TabIndex="6">
            <asp:ListItem>(select)</asp:ListItem>
            <asp:ListItem>What is your Driving Lisense no. ?</asp:ListItem>
            <asp:ListItem>Who was your first childhood friend ?</asp:ListItem>
            <asp:ListItem>What is your favourite pet ?</asp:ListItem>
            <asp:ListItem>Who is your role model ?</asp:ListItem>
            <asp:ListItem>Who is your favourite sports person ?</asp:ListItem>
            <asp:ListItem>Who is your favourite actor/actress ?</asp:ListItem>
            <asp:ListItem>Who was your first teacher ?</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label13" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 380px; top: 229px; position: absolute; width: 60px" 
            Text="Answer :"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" 
            style="z-index: 1; left: 585px; top: 226px; position: absolute; width: 203px" 
            TabIndex="7"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 378px; top: 262px; position: absolute; margin-top: 0px; margin-left: 0px; width: 99px;" 
        Text="Access Level : "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            style="z-index: 1; left: 586px; top: 262px; position: absolute; width: 204px; margin-top: 0px; margin-left: 0px" 
            TabIndex="8">
            <asp:ListItem>Viewer</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Developer</asp:ListItem>
            <asp:ListItem>Reporter</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label10" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 377px; top: 293px; position: absolute;  margin-top: 0px; margin-left: 0px; width: 151px;" 
        Text="Project Access Level : "></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" 
        style="z-index: 1; left: 586px; top: 294px; position: absolute; width: 204px; margin-top: 0px; margin-left: 0px; height: 18px;" 
        TabIndex="9">
        <asp:ListItem>Viewer</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Reporter</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label11" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 375px; top: 326px; position: absolute; margin-top: 0px; margin-left: 0px; width: 126px;" 
        Text="Assigned Project : "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"  
        style="z-index: 1; left: 585px; top: 326px; position: absolute; width: 203px; margin-top: 0px; margin-left: 0px" 
        TabIndex="10"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" onclick="Button1_Click" OnClientClick="confirm('updated')"  
            style="z-index: 1; left: 587px; top: 367px; position: absolute; height: 26px; width: 79px;" 
            TabIndex="11" Text="Submit"/>
           
             </asp:Panel>
             </div>
         
             
    </asp:Content>
