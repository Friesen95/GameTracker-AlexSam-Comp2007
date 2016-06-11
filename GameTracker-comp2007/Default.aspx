<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GameTracker_comp2007.Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <bs3:Jumbotron runat="server" ID="Jumbotron1">
        <BodyContent>
            <!-- 
    Author: Alex Friesen and Sam Sunny 
    Stud #: 200302342 & 200300762
    Date: June 6th, 2016
    Description: This is our home page and where we will display list of games
    -->
            <h1>Welcome to StatTastic!</h1>
        </BodyContent>
    </bs3:Jumbotron>
    <div class="container">
        <div class="row">
            <div class="jumbotron">
                <div class="span4 collapse-group">
                    <a class="btn btn-collapse" href="#" role="button">
                        <img src="Assets/glyphicons_free/glyphicons/png/glyphicons-330-soccer-ball.png" />
                        Soccer &raquo;</a>
                    <p class="collapse">Have a soccer game displayed here with Team Name, scores, attendances and stadium</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="jumbotron">
                <div class="span4 collapse-group">
                    <a class="btn btn-collapse" href="#" role="button">
                        <img src="Assets/glyphicons_free/glyphicons/png/glyphicons-463-basketball.png" />
                        Basketball &raquo;</a>
                    <p class="collapse">Have a Basketball game displayed here with Team Name, scores, attendances and stadium</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
