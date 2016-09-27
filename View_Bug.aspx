<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="View_Bug.aspx.cs" Inherits="bug_tracker.WebForm9" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 1632px; width: 1541px;">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Inset" Style="margin-bottom: 0px">
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
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Ridge" BorderColor="Black">
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
        <asp:Panel ID="Panel3" runat="server" BorderStyle="Ridge" BorderColor="Black" Width="1532px">
            <asp:Table ID="Table2" runat="server" CellSpacing="0" CellPadding="4" BorderColor="Black"
                Height="171px">
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Add Note</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="1255px" ID="addnote" Font-Bold="false" BackColor="White"
                        ColumnSpan="5">
                        <asp:TextBox ID="TextBox1" Height="180px" Width="850px" runat="server" TextMode="MultiLine">
                        </asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="1255px" Font-Bold="false" BackColor="White"
                        ColumnSpan="6">
                        <asp:Button ID="Button4" Style="left: 550px; position: relative;" OnClick="Button4_Click"
                            runat="server" Text="Submit" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" BorderStyle="Ridge" BorderColor="Black" Width="1532px">
            <asp:Table ID="Table3" runat="server" CellSpacing="0" CellPadding="4" BorderColor="Black"
                Height="16px" Width="1484px">
                <asp:TableRow>
                    <asp:TableCell BorderWidth="1" Width="232px" Font-Bold="true" BackColor="Aqua">Attach File</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="1255px" ID="attachfile" Font-Bold="false" BackColor="White"
                        ColumnSpan="5">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="Button5" runat="server" Text="Submit" Style="width: 96px;" OnClick="Button5_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" BorderStyle="Ridge" BackColor="White" BorderColor="Black"
            Style="height: 300px; overflow: scroll;">
            <asp:Label runat="server" Font-Bold="true" Font-Size="Larger">Notes</asp:Label>
            <asp:GridView ID="GridView1" runat="server" Width="1510px" PageSize="6" RowStyle-BackColor="Aqua"
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
                CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource3"
                OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle HorizontalAlign="Center" BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField HeaderText="Actions" ItemStyle-Width="11%">
                        <ItemTemplate>
                            <table width="100%">
                                <tr>
                                    <td align="center">
                                        <asp:ImageButton ID="DelButton1" CommandName="RemoveNote" CommandArgument='<%#Eval("noteID") %>'
                                            runat="server" ToolTip="Delete" ImageUrl="~/Styles/image/delete_icon.jpg" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                    <asp:BoundField DataField="datetime" HeaderText="DateTime" SortExpression="datetime" />
                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" HorizontalAlign="Center" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
                SelectCommand="SELECT [username], [datetime], [description],[noteID] FROM [notes] WHERE ([bug_id] = @bug_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="bug_id" SessionField="id_1" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" BorderStyle="Ridge" BackColor="White" BorderColor="Black"
            Style="overflow: scroll;" Width="1533px">
            <asp:Label runat="server" Font-Bold="true" Font-Size="Larger">Files Attached</asp:Label>
            <asp:GridView ID="GridView2" runat="server" Height="16px" Width="1513px" RowStyle-BackColor="Aqua"
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
                CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                OnRowCommand="GridView2_RowCommand">
                <AlternatingRowStyle HorizontalAlign="Center" BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField HeaderText="Actions" ItemStyle-Width="11%">
                        <ItemTemplate>
                            <table width="100%">
                                <tr>
                                    <td align="center">
                                        <asp:ImageButton ID="del" CommandName="RemoveFile" CommandArgument='<%#Eval("fileID") %>'
                                            runat="server" ToolTip="Delete" ImageUrl="~/Styles/image/delete_icon.jpg" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                    <asp:BoundField DataField="filename" HeaderText="Filename" SortExpression="filename"
                        DataFormatString="<a target='_blank' href='Extensions/{0}'>{0}</a>" HtmlEncode="false" />
                    <asp:BoundField DataField="datetime" HeaderText="DateTime" SortExpression="datetime" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" HorizontalAlign="Center" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
                SelectCommand="SELECT [username], [filename], [datetime],[fileID] FROM [files] WHERE ([bug_id] = @bug_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="bug_id" SessionField="id_1" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </div>
</asp:Content>
