<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageadmin.master" AutoEventWireup="true" CodeFile="hotel.aspx.cs" Inherits="admin_hotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="content/css/style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="newuser">
            <h3>Hotel İşlemleri</h3>
            <asp:TextBox ID="h_ad" runat="server" placeholder="Hotel Adı"></asp:TextBox>
            <br />
            <asp:TextBox ID="h_adres" runat="server" placeholder="Hotel adres"></asp:TextBox>
            <br />
            <asp:TextBox ID="h_ozellik" runat="server" placeholder="Hotel özelliği"></asp:TextBox>
            <br />
                      <asp:FileUpload ID="upfileresim"  runat="server" />
        
            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Ekle" Width="51px" />
            </div>


     <div class="product">
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="h_id" DataValueField="h_id">
                </asp:DropDownList>
                <asp:Button ID="del" runat="server" OnClick="del_Click" Text="Sil" Width="43px" />
            </h3><asp:GridView ID="GridView2" CssClass="prdct" runat="server" AutoGenerateColumns="False" DataKeyNames="h_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="h_id" HeaderText="h_id" ReadOnly="True" SortExpression="h_id" InsertVisible="False" />
                        <asp:BoundField DataField="h_adi" HeaderText="h_adi" SortExpression="h_adi" />
                        <asp:BoundField DataField="h_ozellikler" HeaderText="h_ozellikler" SortExpression="h_ozellikler" />
                        <asp:BoundField DataField="h_adres" HeaderText="h_adres" SortExpression="h_adres" />
                        <asp:BoundField DataField="h_resim" HeaderText="h_resim" SortExpression="h_resim" />
                    </Columns>
            </asp:GridView>



            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelAgencySystemConnectionString %>" SelectCommand="SELECT * FROM [Hotel]"></asp:SqlDataSource>




</asp:Content>

