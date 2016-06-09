<!-- 
    Author: Alex Friesen and Sam Sunny 
    Stud #: 200302342 & 200300762
    Date: June 6th, 2016
    Description: This is our home page and where we will display list of games
    -->
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GameTracker_comp2007.Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <bs3:Jumbotron runat="server" ID="Jumbotron1">
        <BodyContent>
            <h1>Welcome to Stat-Tastic!</h1>
        </BodyContent>
    </bs3:Jumbotron>
    <div class="row">
        <div class="span4 collapse-group">
          <h2><span class="glyphicons glyphicons-soccer-ball"></span> Soccer</h2>
           <p class="collapse">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-collapse" href="#">View details &raquo;</a></p>
        </div>
      </div>
</asp:Content>
