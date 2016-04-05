<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageadmin.master" AutoEventWireup="true" CodeFile="turlar.aspx.cs" Inherits="admin_turlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="content/css/style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="newuser">
            <h3>Tur İşlemleri</h3>
            <asp:TextBox ID="t_basyeri" runat="server" placeholder="başlangıç yeri"></asp:TextBox>
            <br />
            <asp:TextBox ID="t_bitsyeri" runat="server" placeholder="bitiş yeri"></asp:TextBox>
            <br />
                 <asp:TextBox ID="t_bastime" runat="server" placeholder="başlangıç zamanı"></asp:TextBox>
            <br />
                
            <asp:TextBox ID="t_bitstime" runat="server" placeholder="bitiş zamanı"></asp:TextBox>
            <br />
                 <asp:TextBox ID="t_bilgi" runat="server" placeholder="bilgi"></asp:TextBox>
            <br />
                 <asp:TextBox ID="t_ad" runat="server" placeholder="tur adı"></asp:TextBox>
            <br />
                 <asp:TextBox ID="t_ucret" runat="server" placeholder="tur ücret"></asp:TextBox>
            <br />
                 <asp:FileUpload ID="upfileresim"  runat="server" />

            <br />

            
            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Ekle" Width="51px" />
            </div>


     <div class="product">
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="t_id" DataValueField="t_id">
                </asp:DropDownList>
                <asp:Button ID="del" runat="server" OnClick="del_Click" Text="Sil" Width="43px" />
            </h3><asp:GridView ID="GridView2" CssClass="prdct" runat="server" AutoGenerateColumns="False" DataKeyNames="t_id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="t_id" HeaderText="t_id" ReadOnly="True" SortExpression="t_id" InsertVisible="False" />
                        <asp:BoundField DataField="startPlace" HeaderText="startPlace" SortExpression="startPlace" />
                        <asp:BoundField DataField="endPlace" HeaderText="endPlace" SortExpression="endPlace" />
                        <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
                        <asp:BoundField DataField="endDate" HeaderText="endDate" SortExpression="endDate" />
                        <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
                        <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
                        <asp:BoundField DataField="t_price" HeaderText="t_price" SortExpression="t_price" />
                        <asp:BoundField DataField="t_resim" HeaderText="t_resim" SortExpression="t_resim" />

                    </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TravelAgencySystemConnectionString %>" SelectCommand="SELECT * FROM [TourInfo]"></asp:SqlDataSource>



</asp:Content>



