<%@ Page Title="My Orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Website.MyOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>
        My Orders
    </h3>
    
    <asp:Label ID="message" runat="server" Font-Bold="true"  ForeColor="#990033"></asp:Label>
    <br /><br />
    <table >
        <tr>
            <td>
                <asp:GridView ID="gv"  runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="600px" DataKeyNames="OrderId"  >
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataTemplate>
                        You have no order!
                    </EmptyDataTemplate>
                    <Columns>
                        <asp:BoundField DataField="OrderId" HeaderText="Order Id" SortExpression="OrderId" />
                        <asp:BoundField DataField="DateTime" HeaderText="Order Time" SortExpression="DateTime" />
                        <asp:BoundField DataField="TotalAmount" HeaderText="Amount" SortExpression="TotalAmount" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td style="text-align:right; vertical-align:top; width: 200px">
                
                
            </td>
        </tr>
    </table>

    

</asp:Content>
