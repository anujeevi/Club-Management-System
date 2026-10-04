<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Club_Management_System.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-box">

    <h1>Member Login</h1>

    <label>Email</label>
    <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>

    <label>Password</label>
    <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>

    <br />

    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>

</div>

</asp:Content>

  