<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ManageAnnouncements.aspx.cs"
    Inherits="Club_Management_System.ManageAnnouncements" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="manage-announcements-box">

        <h1>Manage Announcements</h1>

        <div class="manage-announcement-card">
            <h2>Club Meeting</h2>
            <p>All members are requested to attend the upcoming club meeting.</p>
            <asp:Button ID="btnEdit1" runat="server" Text="Edit" />
        </div>

        <div class="manage-announcement-card">SS
            <h2>Sports Day</h2>
            <p>Sports Day will be conducted on 20 October 2026.</p>
            <asp:Button ID="btnEdit2" runat="server" Text="Edit" />
        </div>

        <div class="manage-announcement-card">
            <h2>Community Program</h2>
            <p>A community awareness program will be conducted soon.</p>
            <asp:Button ID="btnEdit3" runat="server" Text="Edit" />
        </div>

    </div>

</asp:Content>