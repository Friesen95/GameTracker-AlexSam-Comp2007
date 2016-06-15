<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GameTracker_comp2007.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <bs3:Jumbotron runat="server" ID="Jumbotron1">
        <BodyContent>
<!--Author: Alex Friesen and Sam Sunny 
    Stud #: 200302342 & 200300762
    Date: June 6th, 2016
    Description: This is our home page and where we will display list of games -->
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
                    <div class="collapse">
                        <p>Have a soccer game displayed here with Team Name, scores, attendances and stadium</p>
                        <!-- Next and Previous Button Goes here -->
                        <div class="row">
                            <div class="col-xs-6 col-md-4">
                                Previous Button
                            </div>
                            <div class="col-xs-6 col-md-4">
                                Current week 
                            </div> 
                        <div class="col-xs-6 col-md-4">
                                Next Button
                            </div>     
                        </div>
                        <div class="text-center">
                            <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                                ID="SoccerGamesGridView" AutoGenerateColumns="false" DataKeyNames="GameID"
                                OnRowDeleting="SoccerGamesGridView_RowDeleting" AllowPaging ="true"
                                PageSize="4" OnPageIndexChanging="SoccerGamesGridView_PageIndexChanging"
                                AllowSorting="false">
                                <Columns>
                                    <asp:BoundField DataField="HomeTeamName" HeaderText="Home Team" Visible="true" />
                                    <asp:BoundField DataField="HomeTeamPoints" HeaderText="Points" Visible="true" />
                                    <asp:BoundField DataField="Vs" HeaderText="Vs" Visible="true" />
                                    <asp:BoundField DataField="AwayTeamPoints" HeaderText="Points" Visible="true" />
                                    <asp:BoundField DataField="AwayTeamName" HeaderText="Away Team" Visible="true" />
                                    <asp:BoundField DataField="Attendances" HeaderText="Attendances" Visible="true" />
                                    <asp:BoundField DataField="Stadium" HeaderText="Stadium" Visible="true" />
                                </Columns>
                            </asp:GridView>
                           </div>
                    </div>
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
        <div class="row">
            <div class="jumbotron">
                <div class="span4 collapse-group">
                    <a class="btn btn-collapse" href="#" role="button">
                        <img src="Assets/glyphicons_free/glyphicons/png/glyphicons-438-hockey.png" />
                        Hockey &raquo;</a>
                    <p class="collapse">Have a Hockey game displayed here with Team Name, scores, attendances and stadium</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="jumbotron">
                <div class="span4 collapse-group">
                    <a class="btn btn-collapse" href="#" role="button">
                        <img src="Assets/glyphicons_free/glyphicons/png/glyphicons-312-baseball.png" />
                        Baseball &raquo;</a>
                    <p class="collapse">Have a Baseball game displayed here with Team Name, scores, attendances and stadium</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>