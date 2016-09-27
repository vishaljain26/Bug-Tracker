<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="bug_tracker.WebForm7" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height:1000px; width:150%">
    
        
        <asp:Label  ID="Label4" runat="server" Font-Bold="True" Text="Unassigned :-" 
             style="z-index:1;position:absolute; top: 201px; left: 517px;"></asp:Label>
      


         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
             
             SelectCommand="SELECT [id], [summary] FROM [new_bug] WHERE ([assigned_to] IS NULL)">
         </asp:SqlDataSource>
      


        <asp:Label ID="Label5" runat="server" Font-Bold="True"
        style="z-index: 1; left: 1023px; top: 73px; position: absolute" 
        Text="Resolved :-"></asp:Label>

         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
             SelectCommand="SELECT [id], [summary] FROM [new_bug] WHERE ([status] = @status)">
             <SelectParameters>
                 <asp:Parameter DefaultValue="Resolved" Name="status" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>

    <asp:Label ID="Label6" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 37px; top: 407px; position: absolute" 
        Text="Recently Modified :-"></asp:Label>

    <asp:GridView ID="GridView3" runat="server" 
        
        style="z-index: 1; left: 33px; top: 450px; position: absolute; height: 133px; width: 428px" 
        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
             BorderWidth="1px" CellPadding="2" 
             ForeColor="Black" ShowHeader="False" DataKeyNames="id" 
             DataSourceID="SqlDataSource3" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
             
            <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" DataNavigateUrlFormatString="View_Bug.aspx?id={0}" DataTextField="id" ItemStyle-HorizontalAlign="Center" />
           
            <asp:BoundField DataField="summary" HeaderText="summary" 
                SortExpression="summary" ItemStyle-HorizontalAlign="Center" />
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
    </asp:GridView>
         
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
             
             SelectCommand="SELECT [id], [summary] FROM [new_bug] WHERE ([update_status] = @update_status)">
             <SelectParameters>
                 <asp:Parameter DefaultValue="true" Name="update_status" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
             SelectCommand="SELECT [id], [summary] FROM [new_bug] WHERE ([assigned_to] = @assigned_to)">
             <SelectParameters>
                 <asp:SessionParameter Name="assigned_to" SessionField="abc" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         
         <asp:Label ID="Label8" runat="server" Font-Bold="True" 
             style="z-index: 1; left: 36px; top: 76px; position: absolute" Text="All :-"></asp:Label>
         
         <asp:GridView ID="GridView5" runat="server" 
             
             style="z-index: 1; left: 31px; top: 129px; position: absolute; height: 133px; width: 408px" 
             AutoGenerateColumns="False" ShowHeader="False" DataKeyNames="id" 
             DataSourceID="SqlDataSource5" BackColor="LightGoldenrodYellow" 
             BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
             GridLines="None" AllowPaging="True">
             <AlternatingRowStyle BackColor="PaleGoldenrod" />
             <Columns>
                  <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="View_Bug.aspx?id={0}" DataTextField="id" 
                    ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                  </asp:HyperLinkField>
                 <asp:BoundField DataField="summary" HeaderText="summary" ItemStyle-HorizontalAlign="Center" 
                     SortExpression="summary" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                  </asp:BoundField>
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
             
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
             SelectCommand="SELECT [id], [summary] FROM [new_bug]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" 
        
        style="z-index: 1; left: 1024px; top: 135px; position: absolute; height: 133px; width: 467px" 
        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
             BorderWidth="1px" CellPadding="2" 
             ForeColor="Black" ShowHeader="False" DataSourceID="SqlDataSource2" 
             DataKeyNames="id" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
             
                <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="View_Bug.aspx?id={0}" DataTextField="id" 
                    ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                </asp:HyperLinkField>
                <asp:BoundField DataField="summary" HeaderText="summary" 
                    SortExpression="summary" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
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
    </asp:GridView>

        <asp:GridView ID="GridView2" runat="server" 
    
        style="z-index: 1; left: 512px; top: 251px; position: absolute; height: 133px; width: 432px" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" 
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
        RowHeaderColumn="summary" ShowHeader="False" DataKeyNames="id" GridLines="None" AllowPaging="True" 
               >
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                
                <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="View_Bug.aspx?id={0}" DataTextField="id" 
                    ItemStyle-HorizontalAlign="Center"  >
<ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                </asp:HyperLinkField>
                <asp:BoundField DataField="summary" HeaderText="summary" 
                    SortExpression="summary" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
      


         <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
             DataKeyNames="id" DataSourceID="SqlDataSource4" ShowHeader="False" 
             
             style="z-index: 1; left: 1020px; top: 448px; position: absolute; height: 141px; width: 456px" 
             BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
             CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True">
             <AlternatingRowStyle BackColor="PaleGoldenrod" />
             <Columns>
                  <asp:HyperLinkField ItemStyle-Width="10%" DataNavigateUrlFields="id" 
                      DataNavigateUrlFormatString="View_Bug.aspx?id={0}" DataTextField="id" 
                      ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                  </asp:HyperLinkField>
                 <asp:BoundField DataField="summary"
                     SortExpression="summary" ItemStyle-HorizontalAlign="Center" >
                   
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                   
                  </asp:BoundField>
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
         </asp:GridView>
         
         <asp:Label ID="Label7" runat="server" Font-Bold="True" 
             style="z-index: 1; left: 1018px; top: 409px; position: absolute" 
             Text="Assigned to me :-"></asp:Label>
         
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
    