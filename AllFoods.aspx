<%@ Page Title="All Foods" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllFoods.aspx.cs" Inherits="Website.AllFoods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>
        All Foods
    </h3>
    
    <asp:Label ID="message" runat="server" Font-Bold="true"  ForeColor="#990033"></asp:Label>
    <br /><br />
    <table >
        <tr>
            <td>
                <asp:GridView ID="gv"  runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="600px" DataKeyNames="FoodId" OnRowCommand="gv_RowCommand" >
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataTemplate>
                        There is no available food
                    </EmptyDataTemplate>
                    <Columns>
                        <asp:BoundField DataField="FoodId" HeaderText="Food Id" SortExpression="FoodId" />
                        
                        <asp:TemplateField HeaderText="Food Item">
                            <ItemTemplate>
                                
                                
                                <asp:Image runat="server" AlternateText="" ImageUrl='<%# Eval("FoodId", "~/Images/Foods/{0}.jpg") %>' Width="100px" />
                                
                                <asp:Label runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ImageUrl="~/Images/add.png" Width="24" CommandName='<%# Eval("Name") %>' CommandArgument='<%# Eval("FoodId")+ "," +Eval("Price") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:Label ID="lblCart"  Font-Bold="true" runat="server"></asp:Label>
                <br />
                <asp:ImageButton ImageUrl="~/Images/checkout.jpg" ID="btnCheckout" Width="120" runat="server" Visible="false" OnClick="btnCheckout_Click" />
            </td>
        </tr>
    </table>

    

</asp:Content>
