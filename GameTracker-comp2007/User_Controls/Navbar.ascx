﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="GameTracker_comp2007.Navbar" %>
<!-- 
    Author: Alex Friesen and Sam Sunny 
    Stud #: 200302342 & 200300762
    Date: June 6th, 2016
    Description: This is our Navbar for our website
    -->
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Default.aspx"><i class="fa fa-fort-awesome fa-lg"></i> StatTastic</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <% if (Session["admin"] != null)
                    { %>
                <li id="users" runat="server"><a href="Users.aspx"><i class="fa fa-user fa-lg"></i> Manage Users</a></li>
                <% } %>
                <li id="home" runat="server"><a href="Default.aspx"><i class="fa fa-home fa-lg"></i> Home</a></li>
                <li id="contact" runat="server"><a href="Contact.aspx"><i class="fa fa-phone fa-lg"></i> Contact</a></li>
                <% if (Session["userName"] != null)
                    { %>
                <li id="Li2" runat="server" ><a href="Logout.aspx"><i class="fa fa-sign-in fa-lg"></i> Log Out</a></li>
                
                <% }
                    else
                   {%>
                <li id="Li1" runat="server"><a href="LogIn.aspx"><i class="fa fa-sign-in fa-lg"></i> Log In</a></li>
                <% } %>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
