<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Report_Bug.aspx.cs" Inherits="bug_tracker.WebForm3" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 120%">
        <asp:Panel ID="Panel1" runat="server" Width="67%" Height="92%" Style="margin-top: 0px;
            margin-left: 150px" BorderStyle="Ridge" Visible="true" TabIndex="1"> 
            <asp:Panel ID="Panel3" runat="server" BorderColor="#FF3300" BorderStyle="Ridge"
                Style="z-index: 1; left: 151.54px; top: 3px; position: absolute; height: 234px;
                width: 996px" BackColor="#999999">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 1;
            left: 407px; top: 3px; position: absolute" Text="REPORT BUG"></asp:Label>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Style="z-index: 1; left: 141px;
            top: 62px; position: absolute" Text="Date Submitted :"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 1; left: 429px; top: 63px;
            position: absolute; width: 232px;" TabIndex="4" ></asp:TextBox>
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Style="z-index: 1; left: 141px;
            top: 109px; position: absolute; height: 19px" Text="Priority :"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 1; left: 432px;
            top: 111px; position: absolute; height: 20px; width: 122px;" TabIndex="8">
            <asp:ListItem>None</asp:ListItem>
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
            <asp:ListItem>Urgent</asp:ListItem>
            <asp:ListItem>Immediate</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Style="z-index: 1; left: 141px;
            top: 153px; position: absolute" Text="Severity :"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 1; left: 432px;
            top: 155px; position: absolute; width: 122px; height: 20px; right: 442px;" 
                    TabIndex="9">
            <asp:ListItem>Tweak</asp:ListItem>
            <asp:ListItem>Minor</asp:ListItem>
            <asp:ListItem>Major</asp:ListItem>
            <asp:ListItem>Crash</asp:ListItem>
            <asp:ListItem>Block</asp:ListItem>
            <asp:ListItem>Feature</asp:ListItem>
            <asp:ListItem>Trivial</asp:ListItem>
            <asp:ListItem>Text</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Style="z-index: 1; left: 138px;
            top: 193px; position: absolute" Text="Reproducibility :"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 1; left: 432px;
                    top: 195px; position: absolute; width: 123px;">
                    <asp:ListItem>Always</asp:ListItem>
                    <asp:ListItem>Sometimes</asp:ListItem>
                    <asp:ListItem>Random</asp:ListItem>
                    <asp:ListItem>Have not tried</asp:ListItem>
                    <asp:ListItem>Unable to Reproduce</asp:ListItem>
                    <asp:ListItem>N/A</asp:ListItem>
                </asp:DropDownList>
        </asp:Panel>
            
            
            <asp:Panel ID="Panel4" runat="server" BorderColor="#FF3300" BorderStyle="Ridge"
                Style="z-index: 1; left: 151.54px; top: 243px; position: absolute; height: 158px;
                width: 997px" BackColor="#CCCCCC">
                <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="#0033CC" Style="z-index: 1;
                left: 135px; top: -1px; position: absolute" Text="SELECT PROFILE"></asp:Label>
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Style="z-index: 1; left: 133px;
        top: 37px; position: absolute" Text="Platform :"></asp:Label>
                
                <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 1; left: 430px; top: 37px;
        position: absolute; width: 240px" TabIndex="12" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Style="z-index: 1; left: 133px;
        top: 74px; position: absolute; width: 37px" Text="O.S :"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 1; left: 429px; top: 74px;
        position: absolute; width: 241px" TabIndex="13" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:Label ID="Label19" runat="server" Font-Bold="True" Style="z-index: 1; left: 132px;
                top: 112px; position: absolute; height: 20px; right: 723px" 
                    Text="O.S Version :"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 1; left: 429px; top: 113px;
        position: absolute; width: 239px" TabIndex="14" AutoCompleteType="Disabled"></asp:TextBox>
            </asp:Panel>
            
            
            
            <asp:Panel ID="Panel5" runat="server" BorderColor="#FF3300" BorderStyle="Groove"
                Style="z-index: 1; left: 151.54px; top: 395px; position: absolute; height: 700px;
                width: 996px" BackColor="#999999">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Style="z-index: 1; left: 131px;
        top: 33px; position: absolute; height: 23px" Text="Summary :"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 1; left: 431px; top: 21px;
            position: absolute; height: 106px; width: 241px" TabIndex="15" 
                    TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="Label21" runat="server" Font-Bold="True" Style="z-index: 1; left: 135px;
        top: 156px; position: absolute" Text="Description :"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 1; left: 434px; top: 143px;
        position: absolute; height: 116px; width: 240px" TabIndex="16" TextMode="MultiLine"></asp:TextBox>
                <asp:TextBox ID="TextBox9" runat="server" Style="z-index: 1; left: 434px; top: 403px;
        position: absolute; height: 112px; width: 241px" TextMode="MultiLine" TabIndex="18"></asp:TextBox>

                <asp:Label ID="Label22" runat="server" Font-Bold="True" Style="z-index: 1; left: 131px;
        top: 295px; position: absolute" Text="Steps To Re-produce :"></asp:Label>
                <asp:Label ID="Label24" runat="server" Font-Bold="True" Style="z-index: 1; left: 127px;
                top: 407px; position: absolute" Text="Additional Information :"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 1; left: 434px; top: 272px;
        position: absolute; height: 116px; width: 240px" TabIndex="17" TextMode="MultiLine"></asp:TextBox>

                <asp:Button ID="Button2" runat="server" 
                    style="z-index: 1; left: 608px; top: 641px; position: absolute; width: 83px" 
                    Text="Submit" onclick="Button2_Click" TabIndex="20" />

                <asp:CheckBox ID="CheckBox1" runat="server" 
                    style=" position:absolute; top: 645px; left: 238px;" 
                    Text="Check If You Want to Report More Bugs" TabIndex="19" />

                <asp:Label ID="Label27" runat="server" Font-Bold="True" 
                    style="z-index: 1; left: 129px; top: 550px; position: absolute" 
                    Text="Attachment :"></asp:Label>
                        <asp:FileUpload runat="server" ID="FileUpload1"  
                    style="z-index:1;position:absolute; top: 546px; left: 433px;" />
            </asp:Panel>
        </asp:Panel>
    </div>
</asp:Content>
