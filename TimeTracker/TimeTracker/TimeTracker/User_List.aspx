﻿<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/TimeTracker/MasterPage.master" CodeBehind="User_List.aspx.cs" Inherits="TimeTracker.TimeTracker.User_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="Server">
    <div id="adminedit">
        <a name="content_start" id="content_start"></a>
        <fieldset>
            <!-- add H2 here and hide it with css since you can not put h2 inside a legend tag -->
            <h2 class="none">
                User List</h2>
            <legend>User List</legend>

                        <asp:ObjectDataSource ID="UserData" runat="server" TypeName="System.Web.Security.Membership"
                            SelectMethod="GetAllUsers" />
                        <asp:GridView ID="ListAllUsers" DataSourceID="UserData" DataKeyNames="UserName" AutoGenerateColumns="False"
                            AllowSorting="true" AllowPaging="true" BorderWidth="0" runat="server" BorderStyle="None"
                            Width="90%" CellPadding="2" PageSize="25">
                            <Columns>
                                <asp:BoundField DataField="UserName" HeaderText="User Name" />
                                <asp:BoundField DataField="Email" HeaderText="E-Mail Address" />
                            </Columns>
                            <RowStyle HorizontalAlign="Left" CssClass="row1" />
                            <HeaderStyle CssClass="grid-header" HorizontalAlign="Left" />
                        </asp:GridView>
                        <br />
                        <asp:Button ID="CreateUser" runat="server" Text="Create new user" CssClass="submit"
                            OnClick="Button_Click" />
                        <br />
        </fieldset>
    </div>
</asp:Content>