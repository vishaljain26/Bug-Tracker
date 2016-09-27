<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="WebForm9.aspx.cs" Inherits="bug_tracker.WebForm9" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 1281px">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Inset" Height="800px" 
            Style="margin-bottom: 0px">
            <asp:Table ID="Table1" runat="server" CellSpacing="0" CellPadding="4" BorderColor="Black"
                Height="477px">
                <asp:TableRow BorderStyle="None" BackColor="Aqua">
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1">ID</asp:TableCell>
                    <asp:TableCell Width="35px" BorderWidth="1" Font-Bold="true" ColumnSpan="1">Project</asp:TableCell>
                    <asp:TableCell Width="350px" BorderWidth="1" Font-Bold="true" ColumnSpan="1">Category</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Font-Bold="true" ColumnSpan="1">View Status</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Font-Bold="true" ColumnSpan="1">Date Submitted</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Font-Bold="true" ColumnSpan="1">Last Updated</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="id" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell Width="350px" BorderWidth="1" ID="project" Font-Bold="false" ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell Width="350px" BorderWidth="1" ID="category" Font-Bold="false" ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" ID="date1" Font-Bold="false" BackColor="White"
                        ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" ColumnSpan="1" ID="date2" BackColor="White"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="6" Height="4" BackColor="AntiqueWhite"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Reporter</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="1255px" ColumnSpan="5" BackColor="White" ID="reporter"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="1" BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Assigned To</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="1255px" ID="assigned_to" ColumnSpan="5" BackColor="white"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="315px" Font-Bold="true" BackColor="Aqua">Priority</asp:TableCell>
                    <asp:TableCell Width="340px" BorderWidth="1" ID="priority" Font-Bold="false" BackColor="White"></asp:TableCell>
                    <asp:TableCell Width="340px" BorderWidth="1" Font-Bold="true" BackColor="Aqua">Severity</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="340px" ID="severity" Font-Bold="false" BackColor="White"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="340px" Font-Bold="true" BackColor="Aqua">Producibility</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="340px" ID="reproducibility" Font-Bold="false"
                        BackColor="White"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="260px" Font-Bold="true" BackColor="Aqua" ColumnSpan="1">Status</asp:TableCell>
                    <asp:TableCell BackColor="White" Width="277px" BorderWidth="1" ID="status" Font-Bold="false"></asp:TableCell>
                    <asp:TableCell Width="280px" BorderWidth="1" Font-Bold="true" BackColor="Aqua">Resolution</asp:TableCell>
                    <asp:TableCell BackColor="White" BorderWidth="1" Width="280px" ID="resolution" Font-Bold="false"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="587px" Font-Bold="true" ColumnSpan="2"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="315px" Font-Bold="true" BackColor="Aqua">Platform</asp:TableCell>
                    <asp:TableCell Width="340px" BackColor="White" BorderWidth="1" ID="platform" Font-Bold="false"></asp:TableCell>
                    <asp:TableCell Width="340px" BorderWidth="1" Font-Bold="true" BackColor="Aqua">OS</asp:TableCell>
                    <asp:TableCell BorderWidth="1" BackColor="White" Width="340px" ID="os" Font-Bold="false"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="340px" Font-Bold="true" BackColor="Aqua">O.S Version</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="340px" BackColor="White" ID="os_version" Font-Bold="false"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="6" BackColor="AntiqueWhite" Height="4"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Summary</asp:TableCell><asp:TableCell
                        BorderWidth="1" Width="1255px" ID="summary" Font-Bold="false" BackColor="White"
                        ColumnSpan="5"></asp:TableCell></asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Description</asp:TableCell><asp:TableCell
                        BorderWidth="1" Width="1255px" ID="description" BackColor="White" Font-Bold="false"
                        ColumnSpan="5"></asp:TableCell></asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" Height="200px" VerticalAlign="Top"
                        BackColor="Aqua">Steps To Reproduce</asp:TableCell><asp:TableCell BorderWidth="1"
                            Width="1255px" ID="steps_to_reproduce" Font-Bold="false" BackColor="White" VerticalAlign="Top"
                            ColumnSpan="5"></asp:TableCell></asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Ridge" BorderColor="Black" Style="z-index: 1;
            left: 3px; top: 495px; position: absolute; height: 26px; width: 1489px">
            <asp:Button ID="Button1" runat="server" Text="Edit" Height="25px" Width="79px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Change Status To:" Style="margin-left: 27px"
                Width="156px" OnClick="Button2_Click" />
            <asp:DropDownList ID="DropDownList1" runat="server" Style="margin-left: 12px; margin-top: 0px"
                Width="168px">
                <asp:ListItem>New</asp:ListItem>
                <asp:ListItem>Feedback</asp:ListItem>
                <asp:ListItem>Acknowledged</asp:ListItem>
                <asp:ListItem>Confirmed</asp:ListItem>
                <asp:ListItem>Assigned</asp:ListItem>
                <asp:ListItem>Resolved</asp:ListItem>
                <asp:ListItem>Closed</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button3" runat="server" Text="Assigned to :" Style="margin-left: 27px"
                Width="156px" OnClick="Button3_Click" />
            <asp:DropDownList ID="DropDownList2" runat="server" Style="margin-left: 12px; margin-top: 0px"
                Width="168px" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
                SelectCommand="SELECT [username] FROM [new_user]"></asp:SqlDataSource>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BorderStyle="Ridge" BorderColor="Black" Style="z-index: 1;
            left: 3px; top: 570px; position: absolute; height: 225px; width: 1489px">
            <asp:Table ID="Table2" runat="server" CellSpacing="0" CellPadding="4" BorderColor="Black"
                Height="171px">
                <asp:TableRow><asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Add Note</asp:TableCell>
                <asp:TableCell BorderWidth="1" Width="1255px" ID="addnote" Font-Bold="false" BackColor="White"
                        ColumnSpan="5">
                
                <asp:TextBox ID="TextBox1" Height="180px" Width="850px" runat="server" TextMode="MultiLine">
                </asp:TextBox>
                </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow >
                <asp:TableCell BorderWidth="1" Width="1255px"  Font-Bold="false" BackColor="White"
                        ColumnSpan="6" >
                    <asp:Button ID="Button4" style=" left: 550px; position: relative;" OnClick="Button4_Click" runat="server" Text="Submit" />
                </asp:TableCell>
                </asp:TableRow>
                </asp:Table>
    </asp:Panel>
       <asp:Panel ID="Panel4" runat="server" BorderStyle="Ridge" BorderColor="Black" Style="z-index: 1;
            left: 3px; top: 825px; position: absolute; height: 36px; width: 1489px">
           <asp:Button ID="Button5" runat="server" Text="Submit" 
               style="z-index:1;position:absolute; top: 3px; left: 485px; width: 96px;" 
               onclick="Button5_Click" />
           <asp:Table ID="Table3" runat="server" CellSpacing="0" CellPadding="4" BorderColor="Black"
                Height="16px">
               <asp:TableRow>
                   <asp:TableCell  BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Attach File</asp:TableCell>
                   <asp:TableCell BorderWidth="1" Width="1255px" ID="attachfile" Font-Bold="false" BackColor="White"
                        ColumnSpan="5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                        </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" BorderStyle="Ridge" BorderColor="Black" Style="z-index: 1;
            left: 3px; top: 875px; position: absolute; height: 190px; width: 1489px">
           
           <asp:Table ID="Table4" runat="server" CellSpacing="0" CellPadding="4" BorderColor="Black"
                Height="175px">
                <asp:TableRow><asp:TableCell Font-Size="Medium" BackColor="White" ColumnSpan="6" Height="15px" Font-Bold="true">Notes</asp:TableCell></asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell  BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua" ID="username"></asp:TableCell>
                   <asp:TableCell BorderWidth="1" Width="1255px" Font-Bold="false" BackColor="White"
                        ColumnSpan="5">
                
               <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="150px" Width="1000px">
               </asp:TextBox>
                        </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
            </asp:Panel>
    </div>
</asp:Content>
