﻿<%@ page language="C#" autoeventwireup="true" masterpagefile="~/TimeTracker/MasterPage.master" codebehind="Login.aspx.cs" inherits="TimeTracker.TimeTracker.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="Server">
    <div id="adminedit">
        <fieldset>
            <!-- add H2 here and hide it with css since you can not put h2 inside a legend tag -->
            <h2 class="none">User Login</h2>
            <legend>User Login</legend>
            <asp:Login ID="Login1" runat="server">
                <LoginButtonStyle CssClass="submit" />
            </asp:Login>
        </fieldset>
    </div>
</asp:Content>
