<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Club_Management_System.Events" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="events-box">

        <h1>Club Events</h1>

        <div class="event-card">
            <h2>Community Meeting</h2>
            <p>Date: 10 October 2026</p>
            <p>Discussion about upcoming community activities.</p>
            <asp:Button ID="btnEvent1" runat="server" Text="Register" OnClick="btnEvent1_Click" />
        </div>

        <div class="event-card">
            <h2>Sports Day</h2>
            <p>Date: 20 October 2026</p>
            <p>A fun sports event for all club members.</p>
            <asp:Button ID="btnEvent2" runat="server" Text="Register" OnClick="btnEvent2_Click" />
        </div>

        <div class="event-card">
            <h2>Community Awareness Program</h2>
            <p>Date: 30 October 2026</p>
            <p>An awareness program for our community members.</p>
            <asp:Button ID="btnEvent3" runat="server" Text="Register" OnClick="btnEvent3_Click" />
        </div>

    </div>

</asp:Content>