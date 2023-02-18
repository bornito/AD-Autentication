<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ASBPWebApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Kontakt</h2>
    <h3>Kontakt podaci</h3>
    <address>
        Visoko učilište Algebra<br />
        Zagreb, Gradišćanska 24<br />
        <abbr title="Phone">Tel:</abbr>
        01/2222 182
    </address>

    <address>
        <strong>Podrška:</strong>   <a href="mailto:info@algebra.hr">info@algebra.hr</a><br />
        <strong>Referada:</strong> <a href="mailto:studentska.referada@algebra.hr">studentska.referada@algebra.hr</a>
    </address>
</asp:Content>
