<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/Register.aspx.cs" Inherits="Club_Management_System.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="register-box">

        <h1>Member Registration</h1>

        <label>Full Name</label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <label>Email</label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

        <label>Phone Number</label>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>

        <label>Address</label>
        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>

        <label>Password</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

        <br />

        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />

    </div>

</asp:Content>