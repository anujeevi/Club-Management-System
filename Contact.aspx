<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Club_Management_System.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contact-box">

        <h1>Contact Us</h1>

        <label>Name</label>
        <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>

        <label>Email</label>
        <asp:TextBox ID="txtContactEmail" runat="server"></asp:TextBox>

        <label>Message</label>
        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>

        <br />

        <asp:Button ID="btnSend" runat="server" Text="Send Message" OnClick="btnSend_Click" />

    </div>

</asp:Content>