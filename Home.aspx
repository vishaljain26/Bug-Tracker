<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="bug_tracker.WebForm7" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 1000px; width: 102%">
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Style="z-index: 1; left: 36px;
            top: 44px; position: absolute" Text="All :-"></asp:Label>
        <asp:GridView ID="GridView5" runat="server" Style="z-index: 1; left: 31px; top: 95px;
            position: absolute; height: 243px; width: 436px; right: 1033px;" AutoGenerateColumns="False"
            ShowHeader="False" DataKeyNames="id" DataSourceID="SqlDataSource5" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None"
            AllowPaging="True">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" DataNavigateUrlFormatString="View_Bug.aspx?id={0}"
                    DataTextField="id" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                </asp:HyperLinkField>
                <asp:BoundField DataField="summary" HeaderText="summary" ItemStyle-HorizontalAlign="Center"
                    SortExpression="summary">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Unassigned :-" Style="z-index: 1;
            position: absolute; top: 47px; left: 551px; bottom: 934px;"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" Style="z-index: 1; left: 550px; top: 95px;
            position: absolute; height: 225px; width: 479px" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan"
            BorderWidth="1px" CellPadding="2" ForeColor="Black" RowHeaderColumn="summary"
            ShowHeader="False" DataKeyNames="id" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" DataNavigateUrlFormatString="View_Bug.aspx?id={0}"
                    DataTextField="id" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                </asp:HyperLinkField>
                <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="z-index: 1; left: 1104px;
            top: 47px; position: absolute" Text="Resolved :-"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 1; left: 1106px; top: 96px;
            position: absolute; height: 133px; width: 433px" AutoGenerateColumns="False"
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
            ForeColor="Black" ShowHeader="False" DataSourceID="SqlDataSource2" DataKeyNames="id"
            GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" DataNavigateUrlFormatString="View_Bug.aspx?id={0}"
                    DataTextField="id" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                </asp:HyperLinkField>
                <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary"
                    ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Style="z-index: 1; left: 30px;
            top: 404px; position: absolute" Text="Recently Modified :-"></asp:Label>
        <asp:GridView ID="GridView3" runat="server" Style="z-index: 1; left: 30px; top: 465px;
            position: absolute; height: 133px; width: 434px" AutoGenerateColumns="False"
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
            ForeColor="Black" ShowHeader="False" DataKeyNames="id" DataSourceID="SqlDataSource3"
            GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" DataNavigateUrlFormatString="View_Bug.aspx?id={0}"
                    DataTextField="id" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary"
                    ItemStyle-HorizontalAlign="Center" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Style="z-index: 1; left: 553px;
            top: 408px; position: absolute" Text="Assigned to me :-"></asp:Label>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
            DataSourceID="SqlDataSource4" ShowHeader="False" Style="z-index: 1; left: 549px;
            top: 465px; position: absolute; height: 141px; width: 473px" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None"
            AllowPaging="True">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" DataNavigateUrlFormatString="View_Bug.aspx?id={0}"
                    DataTextField="id" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                </asp:HyperLinkField>
                <asp:BoundField DataField="summary" SortExpression="summary" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
            SelectCommand="SELECT [id], [summary] FROM [new_bug] WHERE ([assigned_to] IS NULL)">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
            SelectCommand="SELECT [id], [summary] FROM [new_bug] WHERE ([status] = @status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Resolved" Name="status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
            SelectCommand="SELECT [id], [summary] FROM [new_bug] WHERE ([update_status] = @update_status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="update_status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
            SelectCommand="SELECT [id], [summary] FROM [new_bug] WHERE ([assigned_to] = @assigned_to)">
            <SelectParameters>
                <asp:SessionParameter Name="assigned_to" SessionField="abc" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
            SelectCommand="SELECT [id], [summary] FROM [new_bug]"></asp:SqlDataSource>
        <%--<asp:GridView ID="GridView4" runat="server" 
             
             style="z-index:1; position:absolute; top: 448px; left: 902px; width: 454px; height: 153px;" 
             AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
             BorderWidth="1px" CellPadding="2" DataKeyNames="id" 
             DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="None">
             <AlternatingRowStyle BackColor="PaleGoldenrod" />
             <Columns>
                 <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                     SortExpression="id" />
                 <asp:BoundField DataField="summary" HeaderText="summary" 
                     SortExpression="summary" />
             </Columns>
             <FooterStyle BackColor="Tan" />
             <HeaderStyle BackColor="Tan" Font-Bold="True" />
             <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                 HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
             <SortedAscendingCellStyle BackColor="#FAFAE7" />
             <SortedAscendingHeaderStyle BackColor="#DAC09E" />
             <SortedDescendingCellStyle BackColor="#E1DB9C" />
             <SortedDescendingHeaderStyle BackColor="#C2A47B" />
             
       
         </asp:GridView>--%>
    </div>
</asp:Content>
