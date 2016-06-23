﻿<%@ Page Title="Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="GameTracker_comp2007.Users" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    
<div class="container jumbotron">

        <div class="row">

            <div class="col-md-offset-2 col-md-8">

                <h1>Users</h1>

                <a href="Register.aspx?" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Register New User</a>

                <asp:GridView runat="server" ID="UsersGridView" AutoGenerateColumns="false"

                    CssClass="table table-bordered table-striped table-hover" OnRowDeleting="UsersGridView_RowDeleting" DataKeyNames="Id">

                    <Columns>

                        <asp:BoundField DataField="UserName" HeaderText="User Name" Visible="true" />

                        <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" Visible="true" />

                        <asp:BoundField DataField="Email" HeaderText="Email" Visible="true" />

                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/Register.aspx" 

                            DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Register.aspx?Id={0}" 

                            ControlStyle-CssClass="btn btn-primary btn-sm" />

                        <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" 

                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />

                    </Columns>

                </asp:GridView>

            </div>

        </div>

    </div>




</asp:Content>
