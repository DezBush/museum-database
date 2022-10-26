<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Please login to access the home page associated with your account&#39;s authorization level.</h1>
        <h2>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        </h2>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="41px" OnTextChanged="TextBox1_TextChanged" Width="246px"></asp:TextBox>
            </h2>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </h2>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
