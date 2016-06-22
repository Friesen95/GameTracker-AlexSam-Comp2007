<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GameTracker_comp2007.Register" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 
    Author: Alex Friesen and Sam Sunny 
    Stud #: 200302342 & 200300762
    Date: June 6th, 2016
    Description: This will be the page/form that lets you register an account
    -->

    <div class="container jumbotron">
        <div class="col-md-offset-3 col-md-6">
            <h1>Register Details</h1>
            <h5>All fields are Required</h5>
            <br />
            <%--<div class="form-group">
                <label class="" for="LastNameTextBox">Last Name</label>
                <asp:TextBox runat="server" id="LastnameTextBox" CssClass="form-control" placeholder="Last Name" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="FirstNameTextBox">First Name</label>
                <asp:TextBox runat="server" id="FirstNameTextBox" CssClass="form-control" placeholder="First Name" required="true"></asp:TextBox>
            </div>--%>
            <div class="form-group">
                <label class="" for="userNameTextBox">User Name</label>
                <asp:TextBox runat="server" id="userNameTextBox" CssClass="form-control" placeholder="User Name" required="true"></asp:TextBox>
            </div>  
            <div class="form-group">
                <label class="" for="emailTextBox">Email</label>
                <asp:TextBox runat="server" id="emailTextBox" CssClass="form-control" placeholder="Email" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="passwordTextBox">Password</label>
                <asp:TextBox runat="server" id="passwordTextBox" TextMode="Password" CssClass="form-control" placeholder="Password" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="confirmPasswordTextBox">Confirm Password</label>
                <asp:TextBox runat="server" id="confirmPasswordTextBox" TextMode="Password" CssClass="form-control" placeholder="Confirm Password" required="true"></asp:TextBox>
                <asp:CompareValidator runat="server" ControlToValidate="confirmPasswordTextBox" CssClass="validationError" ControlToCompare="passwordTextBox" ErrorMessage="No match" ToolTip="passwords must be the same"></asp:CompareValidator>
            </div>            
            <div class="text-right">
                <asp:Button Text="Cancel" runat="server" ID="CancelButton" CssClass="btn btn-warning btn-lg" CausesValidation="false" UseSubmitBehavior="false" OnClick="CancelButton_Click" />
                <asp:Button Text="Save" ID="RegisterButton" runat="server" CssClass="btn btn-primary btn-lg" OnClick="RegisterButton_Click" CausesValidation="true" />
             </div>
            <div class="alert alert-danger" id="alertFlash" runat="server" visible="false">
                <asp:Label runat="server" ID="statusLabel"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
