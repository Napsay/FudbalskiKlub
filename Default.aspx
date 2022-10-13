<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="test._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label Text="Fudbalski Klub" runat="server" Font-Size="Larger" />
    <br />
    <asp:Label Text="Klub:" runat="server" />
   

    <asp:DropDownList ID="ddlKlub" runat="server" Height="26px" Width="137px">
    </asp:DropDownList>
    <br />
    <br />

    <br />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

</asp:Content>
