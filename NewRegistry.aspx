<%@ Page Title="" Language="C#"  UnobtrusiveValidationMode="None" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="NewRegistry.aspx.cs" Inherits="GalleryProject.NewRegistry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />
    <div >
           <nav class="navbar navbar-expands-sm bg-dark navbar-dark justify-content-md-center">
            <asp:Label ID="LblBaslikYeni" runat="server" Text="Model Ekle" ForeColor="White" Font-Bold="True" Font-Size="20px" Width="778px"></asp:Label>
            <br />
             </nav>           
           <div class="row">
           <div class="col-xxl-1">
            <table>
             <tr>
                <td class="text-center">
                   
                    <asp:Label ID="LblModelAdiYeni" runat="server" Text="Modelin adı:"  Font-Size="20px"></asp:Label>

                    
                </td>
                <td class="text-start" style="width: 502px"> 
                    <asp:TextBox ID="txtModelAdiYeni" runat="server" AutoPostBack="True"  ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Lütfen Bir Modeel Giriniz."
                        ControlToValidate="txtModelAdiYeni"
                        ForeColor="Red" Display="Dynamic"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <br />
            <tr>
                <td class="text-center">
                    <asp:Label ID="lblMarkaAdi" runat="server" Text="Marka Adı: " Font-Size="20px"></asp:Label></td>
                <td class="text-start" style="width: 502px"> 
                    <asp:TextBox ID="TxtMarkaAdiYeni" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Lütfen Bir Marka Adı Giriniz."
                        ControlToValidate="txtMarkaAdiYeni"
                        ForeColor="Red" Display="Dynamic"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <br />
                        <tr>
                <td class="text-center">
                    <asp:Label ID="lblYilYeni" runat="server" Text="Yıl:" Font-Size="20px"></asp:Label></td>
                <td class="text-start" style="width: 502px"> 
                    <asp:TextBox ID="TxtYilYeni" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Lütfen Bir Yıl Giriniz."
                        ControlToValidate="TxtYilYeni"
                        ForeColor="Red" Display="Dynamic"
                        ></asp:RequiredFieldValidator><br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server"
                        ErrorMessage="Lütfen Geçerli Bir yıl giriniz (1891-2020)"
                         ControlToValidate="TxtYilYeni"
                        foreColor="Red"
                        MinimumValue="1891"
                        MaximumValue="2020"
                        Type="Integer"
                        Display="Dynamic"
                        ></asp:RangeValidator>
                </td>
            </tr>
                
                        <tr>
                <td class="text-center">
                    <asp:Label ID="lblVitesYeni" runat="server" Text="Vites:" Font-Size="20px"></asp:Label></td>
                <td class="text-start" style="width: 502px"> 
                    <asp:TextBox ID="txtVitesYeni" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Lütfen Bir Vites türü Giriniz."
                        ControlToValidate="TxtVitesYeni"
                        ForeColor="Red" Display="Dynamic"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>

            <br />
            <tr>
                <td class="text-center">
                    <asp:Label ID="lblPlakaYeni" runat="server" Text="Plaka:" Font-Size="20px"></asp:Label></td>
                <td class="text-start" style="width: 502px"> 
                    <asp:TextBox ID="txtPlakaYeni" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Lütfen Bir Plaka Giriniz."
                        ControlToValidate="TxtPlakaYeni"
                        ForeColor="Red" Display="Dynamic"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
                  </table>
             </div>
            <br /><br /><br /><br />
           <div class="col-1" style="text-align: justify">
                <tr>
                    <td colspan="2">
                        <asp:Button ID="BtnRegister" class="btn btn-primary" data-toggle="button" runat="server" Text="Kaydet" ForeColor="Green" BackColor="OrangeRed" OnClick="BtnUpdate_Click"/>
                        <asp:Label ID="lblOnay" runat="server" Text="" Visible="false" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
             </div>
           </div>
        </div>
</asp:Content>
