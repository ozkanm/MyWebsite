<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h3>Food Online</h3>
        <p class="lead">Food online taks order online and deliver food at your service!</p>
        <p><a href="About.aspx" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h4>Browse Foods</h4>
            <p>
                We have huge collection of foods
            </p>
            <p>
                <a class="btn btn-default" href="AllFoods.aspx">Browse Foods &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h4>Register Now</h4>
            <p>
                Registration is totally free
            </p>
            <p>
                <a class="btn btn-default" href="Register.aspx">Register Now &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h4>Login</h4>
            <p>
                Login to select your food items and checkout online
            </p>
            <p>
                <a class="btn btn-default" href="Login.aspx">Login Now &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
