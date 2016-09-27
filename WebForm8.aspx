<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="WebForm8.aspx.cs" Inherits="bug_tracker.WebForm8" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 100%; width: 150%">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#CC3300"
            Style="z-index: 1; left: 562px; top: 55px; position: absolute" 
            Text="List Of Users" Font-Size="X-Large"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            Style="z-index: 1; left: 348px; top: 143px; position: absolute; height: 297px;
            width: 570px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Actions" ItemStyle-Width="11%">
                    <ItemTemplate>
                        <table width="100%">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="edit" CommandName="Edit" CommandArgument='<%#Eval("username") %>'
                                        ImageUrl="~/Styles/image/b.jpg" ToolTip="Edit" runat="server" />
                                </td>
                                <td align="right">
                                    <asp:ImageButton ID="del" CommandName="Delete" CommandArgument='<%#Eval("username") %>'
                                        runat="server" ToolTip="Delete" ImageUrl="~/Styles/image/delete_icon.jpg" />
                                        </td>
                                    <%--<asp:ImageButton ID="lkCancel" CommandName="RowCancel" CommandArgument='<%#Eval("HydID") %>'
                                        runat="server" ToolTip="Delete Hydrographic Office" ImageUrl="~/images/cancel.gif" />&nbsp;
                                </td>--%>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <%--<asp:ImageField  DataImageUrlField="ImageURL"  AlternateText="Edit"></asp:ImageField>--%>
                <%--<asp:TemplateField 
          <asp:ButtonField ButtonType="Image" 
              ImageUrl="Styles/image/a.jpg" InsertVisible="True"  
                  CausesValidation="True" DataTextField="username" CommandName="Change" CommandArgument='<%#Eval("username") %>' />--%>
                <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="real_name" HeaderText="Real Name" SortExpression="real_name" />
                <asp:BoundField DataField="access_level" HeaderText="Access Level" SortExpression="access_level" />
                <%--<asp:BoundField DataField="assigned_project" HeaderText="assigned_project" 
                  SortExpression="assigned_project" />--%>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
            SelectCommand="SELECT [username], [email], [real_name], [access_level], ImageURL='~/Styles/image/a.jpg' FROM [new_user]"
            UpdateCommand="UPDATE new_user SET email = @email where username=@username">
            <UpdateParameters>
                <asp:Parameter Name="email" />
                <asp:Parameter Name="username" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink2" runat="server" 
            style="z-index:1;position:absolute; top: 143px; left: 1014px;" 
            NavigateUrl="~/WebForm1.aspx">Create New Account</asp:HyperLink>
    </div>
</asp:Content>
