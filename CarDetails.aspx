<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="CarDetails.aspx.cs" Inherits="GalleryProject.CarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
	<%-- BootStrap KISMI İÇİN --%>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	<%-- BootStrap KISMI İÇİN --%>
	
	<div class="container-fluid justify-content-center bg-secondary" >
	<div class=" align-content-center">
			 <div class="align-content-md-center" style="text-align: center">
					  <img src="Images\Niva.jpg"class="rounded mx-auto d-block "style="width: 50%" alt="Lights"<%-- alt="Lights" style="width: 50%" class="justify-content-center--%>">
			 </div>
		<div>
			
		</div>
		<div class="justify-content-center">
		<table class="table table-dark table-striped">

			<tr class="text-center">
				<asp:Repeater ID="RptDetail" runat="server" OnItemCommand="RptDetail_ItemCommand">
					
				<HeaderTemplate>  
				<th>ARAÇ SAHİBİ</th>
				<th>FİYAT</th>
				<th>DURUM</th>
				<th>ADRES</th>                
				</HeaderTemplate>
				<ItemTemplate>
					</tr>
					<tr>
						<td>  
							<%# DataBinder.Eval(Container.DataItem,"AracSahibi") %>
						
						</td>
						<td>
							<%# DataBinder.Eval(Container.DataItem,"Fiyat")%>
						</td>
						<td>
							<%# DataBinder.Eval(Container.DataItem,"Durum")%>
						</td>
						<td>
							<%# DataBinder.Eval(Container.DataItem,"Adres")%>
						</td>
				</ItemTemplate>
				</asp:Repeater>
			</tr>
		</table>
		</div>
	</div>
	</div>

	<%-- BootStrap KISMI İÇİN --%>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>



	<%-- BootStrap KISMI İÇİN --%>
</asp:Content>
