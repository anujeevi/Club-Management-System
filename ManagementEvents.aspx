<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ManagementEvents.aspx.cs"
    Inherits="Club_Management_System.ManagementEvents" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="manage-events-box">

        <h1>Manage Events</h1>
        <asp:GridView ID="gvEvents" runat="server" AutoGenerateColumns="true"></asp:GridView>

        <div class="manage-event-card">
            <h2>Community Meeting</h2>
            <p>All members are requested to attend the community meeting.</p>
        </div>

        <div class="manage-event-card">
            <h2>Sports Day</h2>
            <p>Sports Day will be conducted for all club members.</p>
        </div>

        <div class="manage-event-card">
            <h2>Community Awareness Program</h2>
            <p>A community awareness program will be conducted soon.</p>
        </div>

    </div>

</asp:Content>