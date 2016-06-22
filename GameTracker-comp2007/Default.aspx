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
        <% if (Session["userName"] != null)
            { %>
        <div style="padding: 20px"><a href="GameCreator.aspx" class="jumbotron" style="padding: 13px;"><i class="fa fa-plus fa-lg">Add Game</i></a></div>
        <% } %>

        <div class="row">
            <div class="jumbotron">
                <div class="span4 collapse-group">
                    <asp:LinkButton runat="server" CssClass="btn btn-collapse" OnClick="Clear_Click">
                       <img src="Content/glyphicons-330-soccer-ball.png" />
                        Soccer &raquo;</asp:LinkButton>
                    <div class="collapse">
                        <p>Have a soccer game displayed here with Team Name, scores, attendances and stadium</p>
                        <!-- Next and Previous Button Goes here -->
                        <div class="row">
                            <div class="col-xs-4 col-md-4">
                                    <asp:Button Text="Previous Week" CssClass="btn btn-default" runat="server" OnClick="SoccerPreviousButton_Clicked" />
                            </div>
                            <div class="col-xs-4 col-md-4">
                                <label>Date: </label> <asp:Label runat="server" ID="soccerDateLabel"></asp:Label>
                            </div>
                            <div class="col-xs-4 col-md-4">
                                    <asp:Button Text="Next Week" CssClass="btn btn-default" runat="server" OnClick="SoccerNextButton_Clicked" />
                            </div>
                        </div>
                        <div class="text-center">
                            <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                                ID="SoccerGamesGridView" AutoGenerateColumns="false" DataKeyNames="Id"
                                OnRowDeleting="SoccerGamesGridView_RowDeleting" AllowPaging="true"
                                PageSize="4" OnPageIndexChanging="SoccerGamesGridView_PageIndexChanging"
                                AllowSorting="false">
                                <Columns>
                                    <asp:BoundField DataField="homeName" HeaderText="Home Team" Visible="true" />
                                    <asp:BoundField DataField="homePoints" HeaderText="Points" Visible="true" />
                                    <asp:TemplateField HeaderText="VS">
                                        <ItemTemplate>
                                            <label>VS</label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="awayPoints" HeaderText="Points" Visible="true" />
                                    <asp:BoundField DataField="awayName" HeaderText="Away Team" Visible="true" />
                                    <asp:BoundField DataField="attendances" HeaderText="Attendances" Visible="true" />
                                    <asp:BoundField DataField="stadium" HeaderText="Stadium" Visible="true" />
                                    <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/GameCreator.aspx.cs"
                            DataNavigateUrlFields="Id" DataNavigateUrlFormatString="GameCreator.aspx?Id={0}" 
                            ItemStyle-CssClass="btn btn-primary btn-sm" ControlStyle-ForeColor="White"/>
                                    <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="true"
                                        ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm"/>
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
                    <asp:LinkButton runat="server" CssClass="btn btn-collapse" OnClick="Clear_Click">
                        <img src="Assets/glyphicons_free/glyphicons/png/glyphicons-463-basketball.png" />
                        Basketball &raquo;</asp:LinkButton>
                    <div class="collapse">
                    <p>Have a Basketball game displayed here with Team Name, scores, attendances and stadium</p>
                    <div class="row">
                        <div class="col-xs-4 col-md-4">
                                <asp:Button Text="Previous Week" CssClass="btn btn-default" runat="server" OnClick="BasketballPreviousButton_Clicked" />
                        </div>
                        <div class="col-xs-4 col-md-4">
                             <label>Date: </label> <asp:Label runat="server" ID="basketballDateLabel"></asp:Label>
                        </div>
                        <div class="col-xs-4 col-md-4">
                                <asp:Button runat="server" Text="Next Week" CssClass="btn btn-default" OnClick="BasketBallNextButton_Clicked" />
                        </div>
                    </div>
                    <div class="text-center">
                        <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                            ID="BasketballGamesGridView" AutoGenerateColumns="false" DataKeyNames="Id"
                            OnRowDeleting="BasketballGamesGridView_RowDeleting" AllowPaging="true"
                            PageSize="4" OnPageIndexChanging="BasketballGamesGridView_PageIndexChanging"
                            AllowSorting="false">
                            <Columns>
                                <asp:BoundField DataField="homeName" HeaderText="Home Team" Visible="true" />
                                <asp:BoundField DataField="homePoints" HeaderText="Points" Visible="true" />
                                <asp:TemplateField HeaderText="VS">
                                    <ItemTemplate>
                                        <label>VS</label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="awayPoints" HeaderText="Points" Visible="true" />
                                <asp:BoundField DataField="awayName" HeaderText="Away Team" Visible="true" />
                                <asp:BoundField DataField="attendances" HeaderText="Attendances" Visible="true" />
                                <asp:BoundField DataField="stadium" HeaderText="Stadium" Visible="true" />
                                <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/GameCreator.aspx.cs"
                            DataNavigateUrlFields="Id" DataNavigateUrlFormatString="GameCreator.aspx?Id={0}" 
                            ItemStyle-CssClass="btn btn-primary btn-sm" ControlStyle-ForeColor="White"/>
                                <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="true"
                                    ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
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
                        <asp:LinkButton runat="server" CssClass="btn btn-collapse" OnClick="Clear_Click">                 
                        <img src="Assets/glyphicons_free/glyphicons/png/glyphicons-438-hockey.png" />
                        Hockey &raquo;</asp:LinkButton>
                    <div class="collapse">
                    <p>Have a Hockey game displayed here with Team Name, scores, attendances and stadium</p>
                <div class="row">
                        <div class="col-xs-4 col-md-4">
                                <asp:Button Text="Previous Week" CssClass="btn btn-default" runat="server" OnClick="HockeyPreviousButton_Clicked" />
                        </div>
                        <div class="col-xs-4 col-md-4">
                             <label>Date: </label> <asp:Label runat="server" ID="hockeyDateLabel"></asp:Label> 
                        </div>
                        <div class="col-xs-4 col-md-4">
                                <asp:Button runat="server" Text="Next Week" CssClass="btn btn-default" OnClick="HockeyNextButton_Click" />
                        </div>
                    </div>
                    <div class="text-center">
                        <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                            ID="HockeyGamesGridView" AutoGenerateColumns="false" DataKeyNames="Id"
                            OnRowDeleting="HockeyGamesGridView_RowDeleting" AllowPaging="true"
                            PageSize="4" OnPageIndexChanging="HockeyGamesGridView_PageIndexChanging"
                            AllowSorting="false">
                            <Columns>
                                <asp:BoundField DataField="homeName" HeaderText="Home Team" Visible="true" />
                                <asp:BoundField DataField="homePoints" HeaderText="Points" Visible="true" />
                                <asp:TemplateField HeaderText="VS">
                                    <ItemTemplate>
                                        <label>VS</label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="awayPoints" HeaderText="Points" Visible="true" />
                                <asp:BoundField DataField="awayName" HeaderText="Away Team" Visible="true" />
                                <asp:BoundField DataField="attendances" HeaderText="Attendances" Visible="true" />
                                <asp:BoundField DataField="stadium" HeaderText="Stadium" Visible="true" />
                                <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/GameCreator.aspx.cs"
                            DataNavigateUrlFields="Id" DataNavigateUrlFormatString="GameCreator.aspx?Id={0}" 
                            ItemStyle-CssClass="btn btn-primary btn-sm" ControlStyle-ForeColor="White"/>
                                <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="true"
                                    ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
               </div>
            </div>
        </div>
        <div class="row">
            <div class="jumbotron" style="margin-bottom:40px;">
                <div class="span4 collapse-group">
                        <asp:LinkButton runat="server" CssClass="btn btn-collapse" OnClick="Clear_Click">                 
                        <img src="Assets/glyphicons_free/glyphicons/png/glyphicons-312-baseball.png" />
                        Baseball &raquo;</asp:LinkButton>
                    <div class="collapse">
                    <p>Have a Baseball game displayed here with Team Name, scores, attendances and stadium</p>
                <div class="row">
                        <div class="col-xs-4 col-md-4">
                                <asp:Button Text="Previous Week" CssClass="btn btn-default" runat="server" OnClick="BaseballPreviousButton_Clicked" />
                        </div>
                        <div class="col-xs-4 col-md-4">
                            <label>Date: </label> <asp:Label runat="server" ID="baseballDateLabel"></asp:Label> 
                        </div>
                        <div class="col-xs-4 col-md-4">
                                <asp:Button runat="server" Text="Next Week" CssClass="btn btn-default" OnClick="BaseballNextButton_Clicked" />
                        </div>
                    </div>
                    <div class="text-center">
                        <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                            ID="BaseballGamesGridView" AutoGenerateColumns="false" DataKeyNames="Id"
                            OnRowDeleting="BaseballGamesGridView_RowDeleting" AllowPaging="true"
                            PageSize="4" OnPageIndexChanging="BaseballGamesGridView_PageIndexChanging"
                            AllowSorting="false">
                            <Columns>
                                <asp:BoundField DataField="homeName" HeaderText="Home Team" Visible="true" />
                                <asp:BoundField DataField="homePoints" HeaderText="Points" Visible="true" />
                                <asp:TemplateField HeaderText="VS">
                                    <ItemTemplate>
                                        <label>VS</label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="awayPoints" HeaderText="Points" Visible="true" />
                                <asp:BoundField DataField="awayName" HeaderText="Away Team" Visible="true" />
                                <asp:BoundField DataField="attendances" HeaderText="Attendances" Visible="true" />
                                <asp:BoundField DataField="stadium" HeaderText="Stadium" Visible="true" />
                                <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/GameCreator.aspx.cs"
                            DataNavigateUrlFields="Id" DataNavigateUrlFormatString="GameCreator.aspx?Id={0}" 
                            ItemStyle-CssClass="btn btn-primary btn-sm" ControlStyle-ForeColor="White"/>
                                <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="true"
                                    ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                            </Columns>
                        </asp:GridView>
                    </div>
                 </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
