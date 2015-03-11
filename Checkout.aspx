<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Website.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h3>
        Order Checkout
    </h3>
    
    <asp:Label ID="message" runat="server" Font-Bold="true"  ForeColor="#990033"></asp:Label>
    <br />



    <asp:MultiView runat="server" ActiveViewIndex="0" ID="mv">
        
        <asp:View runat="server">
            
            <table>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="cartgrid" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"  Width="500px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">
                        <asp:Button runat="server" ID="btnAddMore" Text="Add More Food" OnClick="btnAddMore_Click" />
                    </td>
                    <td style="text-align:right">
                        <asp:Button runat="server" ID="btnPayment" Text="Go for Payment" OnClick="btnPayment_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View runat="server">
            <table class="form">
                <tr>
                    <td>Name: </td>
                    <td><asp:TextBox ID="CardName" runat="server" Text=""></asp:TextBox></td>            
                    <td><asp:RequiredFieldValidator ForeColor="Red" ID="rfv" ControlToValidate="CardName" Text="*" runat="server"></asp:RequiredFieldValidator></td>
                </tr>                
                <tr>
                    <td>Card type: </td>
                    <td>
                        <asp:DropDownList runat="server" ID="CardType">
                            <asp:ListItem Text="Visa" Value="Visa"></asp:ListItem>
                            <asp:ListItem Text="Master" Value="Master"></asp:ListItem>
                            <asp:ListItem Text="Mastero" Value="Mastero"></asp:ListItem>
                            <asp:ListItem Text="American Express" Value="American Express"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                 <tr>
                    <td>Card number: </td>
                    <td><asp:TextBox ID="CardNumber" runat="server"></asp:TextBox></td>            
                     <td>
                         <asp:RequiredFieldValidator  ForeColor="Red" ID="RequiredFieldValidator2" ControlToValidate="CardNumber" Text="*" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="CardNumber" runat="server" ForeColor="Red" ErrorMessage="Invalid card number" Display="Dynamic" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>

                     </td>
                     
                </tr>
                <tr>
                    <td>CVC (4 digit): </td>
                    <td><asp:TextBox ID="CVC" runat="server"></asp:TextBox></td>            
                    <td>
                        <asp:RequiredFieldValidator  ForeColor="Red" ID="RequiredFieldValidator3" ControlToValidate="CVC" Text="*" Display="Dynamic" runat="server"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="CVC" runat="server" ForeColor="Red" ErrorMessage="Invalid CVC" Display="Dynamic" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnReviewOrder" Text="Review Order" CausesValidation="false" runat="server" Font-Bold="true" OnClick="btnReviewOrder_Click" Width="120" /></td>
                    <td></td>
                    <td style="text-align:right">
                        <asp:ImageButton ID="btnPayNow" runat="server" ImageUrl="~/Images/paynow.jpg" Font-Bold="true" OnClick="btnPayNow_Click" Width="120" />
                        
                    </td>
                    
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    
    
</asp:Content>
