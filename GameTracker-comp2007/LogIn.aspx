<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="GameTracker_comp2007.LogIn" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 
    Author: Alex Friesen and Sam Sunny 
    Stud #: 200302342 & 200300762
    Date: June 6th, 2016
    Description: This is our Login page, users can log in and add/edit games
    -->

    <div class="container jumbotron">
        <div class="col-md-offset-3 col-md-6">
            <h1>Login</h1>
            
            <br />
            <div class="form-group">
                <label class="" for="email">E-mail :</label>
                <asp:TextBox runat="server" id="emailTextBox" CssClass="form-control" placeholder="Email" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="password">Password :</label>
                <asp:TextBox runat="server" id="passwordTextBox" TextMode="Password" CssClass="form-control" placeholder="Password" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="invalidLogin" Text="Invalid Login Credentials" CssClass="alert-danger" Visible="false" ></asp:Label>
            </div>
            <div class="text-right">
                <asp:Button Text="Cancel" runat="server" ID="CancelButton" CssClass="btn btn-warning btn-lg" CausesValidation="false" UseSubmitBehavior="false" OnClick="CancelButton_Click" />
                <asp:Button Text="Login" ID="LoginButton" runat="server" CssClass="btn btn-primary btn-lg" OnClick="LoginButton_Click" />
             </div>
            <br />
            <div class="text-right">
                <a href="Register.aspx">Not a member yet? Register here</a>
            </div>
        </div>
    </div>
</asp:Content>
