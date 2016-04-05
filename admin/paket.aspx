<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageadmin.master" AutoEventWireup="true" CodeFile="paket.aspx.cs" Inherits="admin_paket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="content/css/style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="newuser">
            <h2>Paket İşlemleri</h2>
                <h3>Yeni Paket oluştur</h3>
              TUR  <asp:DropDownList ID="drpdwntur" runat="server" DataSourceID="SqlDataSource3" DataTextField="t_id" DataValueField="t_id"></asp:DropDownList>
                <br />
              UCUS  <asp:DropDownList ID="drpdwnucus" runat="server" DataSourceID="SqlDataSource4" DataTextField="f_id" DataValueField="f_id"></asp:DropDownList>
                 <br />
               HOTEL <asp:DropDownList ID="drpdwnhotel" runat="server" DataSourceID="SqlDataSource2" DataTextField="h_id" DataValueField="h_id"></asp:DropDownList>
                 <br />       
                <asp:TextBox ID="p_ad" runat="server" placeholder="paket adı"></asp:TextBox>
            <br />
            <asp:TextBox ID="p_fiyat" runat="server" placeholder="paket fiyat"></asp:TextBox>
            <br />
            <asp:TextBox ID="p_bilgi" runat="server" placeholder="paket bilgi"></asp:TextBox>
            <br />
                 <asp:FileUpload ID="upfileresim"  runat="server" />

            <br />
            
            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Ekle" Width="51px" />
            </div>


     <div class="product">
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource5" DataTextField="p_id" DataValueField="p_id">
                </asp:DropDownList>
                <asp:Button ID="del" runat="server" OnClick="del_Click" Text="Sil" Width="43px" />
            </h3><asp:GridView ID="GridView2" CssClass="prdct" runat="server" AutoGenerateColumns="False" DataKeyNames="p_id" DataSourceID="SqlDataSource5">
                    <Columns>
                        <asp:BoundField DataField="p_id" HeaderText="p_id" ReadOnly="True" SortExpression="p_id" InsertVisible="False" />
                        <asp:BoundField DataField="h_id" HeaderText="h_id" SortExpression="h_id" />
                        <asp:BoundField DataField="t_id" HeaderText="t_id" SortExpression="t_id" />
                        <asp:BoundField DataField="f_id" HeaderText="f_id" SortExpression="f_id" />
                        <asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />
                        <asp:BoundField DataField="p_price" HeaderText="p_price" SortExpression="p_price" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:TravelAgencySystemConnectionString %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>


         <asp:GridView ID="hotel" runat="server" AutoGenerateColumns="False" DataKeyNames="h_id" DataSourceID="SqlDataSource2">
             <Columns>
                 <asp:BoundField DataField="h_id" HeaderText="h_id" InsertVisible="False" ReadOnly="True" SortExpression="h_id" />
                 <asp:BoundField DataField="h_adi" HeaderText="h_adi" SortExpression="h_adi" />
                 <asp:BoundField DataField="h_ozellikler" HeaderText="h_ozellikler" SortExpression="h_ozellikler" />
             </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TravelAgencySystemConnectionString %>" SelectCommand="SELECT [h_id], [h_adi], [h_ozellikler] FROM [Hotel]"></asp:SqlDataSource>
         <asp:GridView ID="tur" runat="server" AutoGenerateColumns="False" DataKeyNames="t_id" DataSourceID="SqlDataSource3">
             <Columns>
                 <asp:BoundField DataField="startPlace" HeaderText="startPlace" SortExpression="startPlace" />
                 <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
                 <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
                 <asp:BoundField DataField="t_id" HeaderText="t_id" InsertVisible="False" ReadOnly="True" SortExpression="t_id" />
                 <asp:BoundField DataField="t_price" HeaderText="t_price" SortExpression="t_price" />
                 <asp:BoundField DataField="endPlace" HeaderText="endPlace" SortExpression="endPlace" />
                 <asp:BoundField DataField="endDate" HeaderText="endDate" SortExpression="endDate" />
             </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TravelAgencySystemConnectionString %>" SelectCommand="SELECT [startPlace], [startDate], [tname], [t_id], [t_price], [endPlace], [endDate] FROM [TourInfo]"></asp:SqlDataSource>
         <asp:GridView ID="ucus" runat="server" AutoGenerateColumns="False" DataKeyNames="f_id" DataSourceID="SqlDataSource4">
             <Columns>
                 <asp:BoundField DataField="f_id" HeaderText="f_id" InsertVisible="False" ReadOnly="True" SortExpression="f_id" />
                 <asp:BoundField DataField="startPlace" HeaderText="startPlace" SortExpression="startPlace" />
                 <asp:BoundField DataField="endPlace" HeaderText="endPlace" SortExpression="endPlace" />
                 <asp:BoundField DataField="f_price" HeaderText="f_price" SortExpression="f_price" />
                 <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
                 <asp:BoundField DataField="endDate" HeaderText="endDate" SortExpression="endDate" />
             </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TravelAgencySystemConnectionString %>" SelectCommand="SELECT [f_id], [startPlace], [endPlace], [f_price], [startDate], [endDate] FROM [FlightInfo]"></asp:SqlDataSource>

</asp:Content>

