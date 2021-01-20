<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="UpdateForm.aspx.cs" Inherits="GalleryProject.UpdateForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />
    <div>
            <nav class="navbar navbar-expands-sm bg-dark navbar-dark  justify-content-md-center">
            <asp:Label ID="LblBaslik" runat="server" Text="Model Güncelle" ForeColor="White" Font-Bold="True" Font-Size="20px" Width="778px" ></asp:Label>
            <br />
                 </nav>
            <br /><br /><br />
            <div class="col-xxl-1">
            <table>
            
            <tr>
                <td>
                    <asp:Label ID="LblModelAdi" runat="server" Text="Modelin adı:" Font-Size="20px"></asp:Label></td>
                <td> 
                    <asp:TextBox ID="txtModelAdi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <br />
            <tr>
                <td>
                    <asp:Label ID="lblMarkaAdi" runat="server" Text="Marka Adı: " Font-Size="20px"></asp:Label></td>
                <td> 
                    <asp:TextBox ID="TxtMarkaAdi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <br />
                        <tr>
                <td>
                    <asp:Label ID="lblYil" runat="server" Text="Yıl:" Font-Size="20px"></asp:Label></td>
                <td> 
                    <asp:TextBox ID="TxtYil" runat="server"></asp:TextBox>
                </td>
            </tr>
            <br />
                        <tr>
                <td>
                    <asp:Label ID="lblVites" runat="server" Text="Vites:" Font-Size="20px"></asp:Label></td>
                <td> 
                    <asp:TextBox ID="txtVites" runat="server"></asp:TextBox>
                </td>
            </tr>

            <br />
            <tr>
                <td>
                    <asp:Label ID="lblPlaka" runat="server" Text="Plaka:" Font-Size="20px"></asp:Label></td>
                <td> 
                    <asp:TextBox ID="txtPlaka" runat="server"></asp:TextBox>
                </td>
            </tr>
                  </table>
              </div>
            <div class="col-xxl-1">
            <br />
                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Button ID="BtnUpdate" runat="server" class="btn btn-primary" data-toggle="button" Text="Kaydet" ForeColor="YellowGreen" OnClick="BtnUpdate_Click1"/>
                    </td>
                </tr>
                </div>
        </div>
</asp:Content>
