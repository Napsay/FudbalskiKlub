<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="test.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="box">
    <p>
    <asp:Label Text="Fudbalski Klub" runat="server" Font-Size="Larger" ID="Label1" />
        <br />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Ime: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="128px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Prezime: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="128px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Godine: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="128px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Pozicija: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Klub: "></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Otkazi" />
    </p>
        </div>
    
</asp:Content>
