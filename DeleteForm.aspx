<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="DeleteForm.aspx.cs" Inherits="GalleryProject.DeleteForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />
    <div>
            <nav class="navbar navbar-expands-sm bg-dark navbar-dark  justify-content-lg-center">
            <asp:Label ID="LblModeliSil" runat="server" Text="Modeli Sil" ForeColor="White" Font-Bold="True" Font-Size="20px" Width="778px" ></asp:Label>           
                </nav>
            <br /><br/ /><br /><br/ />
            <asp:Label ID="lblMarka" runat="server" Text="..." Font-Size="25px"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Markalı" Font-Size="25px"></asp:Label>
            <asp:Label ID="lblModel" runat="server" Text="..." Font-Size="25px"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Model" Font-Size="25px"></asp:Label>
            <asp:Label ID="lblPlaka" runat="server" Text="..." Font-Size="25px"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Plakalı Aracı Silmek İstediğinizden Emin Misiniz?" Font-Size="20px"></asp:Label>
            <br />
            <table>
                <tr>
                    <td class="auto-style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnVazgec" runat="server" class="btn btn-primary" data-toggle="button" Text="VAZGEÇ" BackColor="Orange" Height="33px" Width="104px" OnClick="BtnVazgec_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
               
                <td class="auto-style1">
            <asp:Button ID="BtnTamamenSil" runat="server" class="btn btn-primary" data-toggle="button" Text="SİL" BackColor="Green" Height="34px" Width="94px" OnClick="BtnTamamenSil_Click" CommandArgument='<%# Eval("Id") %>' />
                </td>
                     </tr>
                </table>
        </div>
</asp:Content>
