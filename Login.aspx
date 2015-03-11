<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Website.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        Login
    </h3>
    <br />
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
            <td></td>
            <td><asp:Button runat="server" Text="Submit" CausesValidation="true" ID="Submit" OnClick="Submit_Click" /></td>
            <td></td>
        </tr>
    </table>
</asp:Content>
