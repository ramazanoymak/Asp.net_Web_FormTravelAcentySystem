<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageadmin.master" AutoEventWireup="true" CodeFile="ucus.aspx.cs" Inherits="admin_ucus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="content/css/style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="newuser">
            <h3>Ucuş İşlemleri</h3>
         <asp:TextBox ID="u_basyeri" runat="server" placeholder="başlangıç yeri"></asp:TextBox>
            <br />
            <asp:TextBox ID="u_bitsyeri" runat="server" placeholder="bitiş yeri"></asp:TextBox>
            <br />
                 <asp:TextBox ID="u_bastime" runat="server" placeholder="başlangıç zamanı"></asp:TextBox>
            <br />
                
            <asp:TextBox ID="u_bitstime" runat="server" placeholder="bitiş zamanı"></asp:TextBox>
            <br />
                 <asp:TextBox ID="u_bilgi" runat="server" placeholder="bilgi"></asp:TextBox>
            <br />
                 <asp:TextBox ID="u_ad" runat="server" placeholder="uçuş adı"></asp:TextBox>
            <br />
                 <asp:TextBox ID="u_ucret" runat="server" placeholder="uçuş ücret"></asp:TextBox>
            <br />
                 <asp:FileUpload ID="upfileresim"  runat="server" />

            <br />
            
            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Ekle" Width="51px" />
            </div>


     <div class="product">
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="f_id" DataValueField="f_id">
                </asp:DropDownList>
                <asp:Button ID="del" runat="server" OnClick="del_Click" Text="Sil" Width="43px" />
            </h3><asp:GridView ID="GridView2" CssClass="prdct" runat="server" AutoGenerateColumns="False" DataKeyNames="f_id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="f_id" HeaderText="f_id" ReadOnly="True" SortExpression="f_id" InsertVisible="False" />
                        <asp:BoundField DataField="startPlace" HeaderText="startPlace" SortExpression="startPlace" />
                        <asp:BoundField DataField="endPlace" HeaderText="endPlace" SortExpression="endPlace" />
                        <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
                        <asp:BoundField DataField="endDate" HeaderText="endDate" SortExpression="endDate" />
                        <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
                        <asp:BoundField DataField="f_price" HeaderText="f_price" SortExpression="f_price" />
                        <asp:BoundField DataField="f_resim" HeaderText="f_resim" SortExpression="f_resim" />
                    </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TravelAgencySystemConnectionString %>" SelectCommand="SELECT * FROM [FlightInfo]"></asp:SqlDataSource>



</asp:Content>



