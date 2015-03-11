<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Website.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        User Registration
    </h3>
    <br />
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

        
    <asp:Label ID="message" runat="server" Font-Bold="true"  ForeColor="#990033"></asp:Label>
    <br /><br />
    <table class="form">
        <tr>
            <td>Username</td>
            <td><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" ControlToValidate="Username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Full Name</td>
            <td><asp:TextBox ID="FullName" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" ControlToValidate="FullName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="Email" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid email address"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td></td>
            <td><asp:Button runat="server" Text="Submit" CausesValidation="true" ID="Submit" OnClick="Submit_Click" /></td>
            <td></td>
        </tr>
    </table>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
