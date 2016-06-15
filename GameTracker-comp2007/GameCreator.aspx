<%@ Page Title="Create a Game" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameCreator.aspx.cs" Inherits="GameTracker_comp2007.GameCreator" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 
    Author: Alex Friesen and Sam Sunny 
    Stud #: 200302342 & 200300762
    Date: June 6th, 2016
    Description: This will be the page/form to create a game
    -->

    <div class="container">
        <div class="col-md-offset-3 col-md-6">
            <h1>Student Details</h1>
            <h5>All fields are Required</h5>
            <br />
            <div class="form-group">
                <label class="" for="homeNameTextBox">Home Team</label>
                <asp:TextBox runat="server" id="homeNameTextBox" CssClass="form-control" placeholder="Home Team" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="awayNameTextBox">Away Team</label>
                <asp:TextBox runat="server" id="awayNameTextBox" CssClass="form-control" placeholder="Away Team" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="homePointsTextBox">Home Points</label>
                <asp:TextBox runat="server" id="homePointsTextBox" CssClass="form-control" placeholder="Home Points" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="awayPointsTextBox">Away Points</label>
                <asp:TextBox runat="server" id="awayPointsTextBox" CssClass="form-control" placeholder="Away Points" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="attendancesTextBox">No of Spectators</label>
                <asp:TextBox runat="server" id="attendancesTextBox" CssClass="form-control" placeholder="Attendances" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="stadiumTextBox">Stadium</label>
                <asp:TextBox runat="server" id="stadiumTextBox" CssClass="form-control" placeholder="Stadium" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="" for="sportTypeTextBox">Sport Type</label>
                <asp:DropDownList runat="server" ID="sportTypeTextBox" CssClass="form-control" required="true">
                    <asp:ListItem Text="Soccer" Value="Soccer"></asp:ListItem>
                    <asp:ListItem Text="Basketball" Value="Basketball"></asp:ListItem>
                    <asp:ListItem Text="Hockey" Value="Hockey"></asp:ListItem>
                    <asp:ListItem Text="Baseball" Value="Baseball"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="" for="datePlayedTextBox"></label>
                <asp:TextBox runat="server" TextMode="Date" ID="datePlayedTextBox" CssClass="form-control" placeholder="Game Date Format: mm/dd/yyyy" required="true"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Date! Format: mm/dd/yyyy"
                        ControlToValidate="datePlayedTextBox" MinimumValue="01/01/2000" MaximumValue="01/01/2999"
                        Type="Date" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
            </div>

            <div class="text-right">
                <asp:Button runat="server" Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                <asp:Button runat="server" Text="Add Game" ID="AddGameButton" CssClass="btn btn-primary btn-lg" OnClick="AddGameButton_Click" />
            </div>
        </div>
    </div>
</asp:Content>
