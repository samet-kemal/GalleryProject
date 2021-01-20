<%@ Page Title="" Language="C#"  UnobtrusiveValidationMode="None" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GalleryProject.HomePage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%-- BootStrap KISMI İÇİN --%>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <%-- BootStrap KISMI İÇİN --%>

     
     <link href="StyleSheet1.css" type="text/css" rel="stylesheet">

    <style type="text/css">
        
        .auto-style3 {
            width: 407px;
        }

        .auto-style4 {
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 54px;
        }
    </style>

    <br /><br /><br />

    <div class="row">
        <div class="col bg-dark" > 
            <asp:Label ID="Label2" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ForeColor="White" ></asp:Label> 
        </div>
           
         <div class="col" >
    <div class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
    <div class="carousel-item active">
                    <img class="d-block w-100" src="Images/Niva.jpg" alt="First slide" />
  </div>
      <div class="carousel-item">
                    <img class="d-block w-100" src="Images/kaplumbaga.jpeg" alt="Second slide" />
  </div>

        </div>
        <a class="carousel-control-prev" href="#~/Images/Niva.jpg" role="button" data-slide="prev">
    <span class="carousel-control-prev" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#~/Images/kaplumbaga.jpg" role="button" data-slide="next">
    <span class="carousel-control-next" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
   </div>
            
              <%--  <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Niva.jpg" />--%>
            

         </div>
       
     </div>
    <div class="row">
    <asp:Repeater ID="Repeater1" runat="server"  OnItemCommand="Repeater_ItemCommand">
        
        <HeaderTemplate >
            <div >
            <table class="table table-dark">
            <tr class="text-center">
                            <th scope="col" >
                                <b>ModelAdı</b>

                            </th>
                            <th scope="col">
                                <b>MarkaAdı </b>
                            </th>
                            <th scope="col">
                                <b>yil </b>
                            </th>
                            <th scope="col">
                                <b>Vites  </b>
                            </th>
                            <th scope="col">
                                <b>Plaka </b>
                            </th>
                            <th scope="col">
                                <b>Düzenle </b>
                            </th>
                            <th scope="col">
                                <b>Sil </b>
                            </th>

                        </tr>

           
            </div>
        </HeaderTemplate>
        <ItemTemplate>            
            <tr>
                        <td>
                            
                            <%# DataBinder.Eval(Container.DataItem,"ModelAd") %>
                        
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem,"MarkaAd")%>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem,"Yil")%>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem,"Vites")%>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem,"Plaka")%>
                        </td>
                        <td>
                            <asp:Button ID="BtnDuzenle" runat="server" class="btn btn-primary" data-toggle="button" BackColor="Orange" Text="Düzenle" CommandName="Duzenle"  CommandArgument='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Button ID="BtnSil" runat="server" class="btn btn-primary" data-toggle="button" BackColor="Red" Text="Sil" CommandName="Sil" CommandArgument='<%# Eval("Id") %>' />
                        </td>
                    </tr>
       </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
  </div>

    
    <div class=" row">
            <asp:Button ID="BtnKayit" runat="server" class="btn btn-primary" data-toggle="button" Text="Yeni Kayıt Oluştur"  BackColor="DarkOrange" OnClick="BtnKayit_Click" />
            <br />
            </div>
    <%-- BootStrap KISMI İÇİN --%>

     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    


    <%-- BootStrap KISMI İÇİN --%>
     
     
</asp:Content>
