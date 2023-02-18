<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASBPWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username&nbsp"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
           <tr>
                <td><br></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style1">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" OnClientClick="BtnLogin_Click" /></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style1">
                    <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click1" OnClientClick="BtnPrint_Click" /></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style1">
                    <asp:Label ID="lblError" runat="server" Text="Invalid username or password!" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>

        <table>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="AD User List" Font-Bold></asp:Label></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>

                <td>
                    <asp:ListBox ID="listBox" runat="server"></asp:ListBox></td>
            </tr>
        </table>
    </div>

</asp:Content>
