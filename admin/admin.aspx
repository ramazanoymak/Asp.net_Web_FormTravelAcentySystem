<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="content/css/style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="newuser">
            <h3>Kullanıcı İşlemleri</h3>
            <asp:TextBox ID="ad" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
            <br />
            <asp:TextBox ID="soyad" runat="server" placeholder="soyad"></asp:TextBox>
            <br />
            <asp:TextBox ID="mail" runat="server" placeholder="E-Poasta"></asp:TextBox>
            <br />
            <asp:TextBox ID="tel" runat="server" placeholder="tel no"></asp:TextBox>
            <br />
            <asp:TextBox ID="parola" runat="server" placeholder="parola"></asp:TextBox>
            <br />

            Kullanıcı Tipi:<asp:DropDownList ID="role" runat="server" Height="18px" Width="48px">
           <asp:ListItem>1</asp:ListItem>
           <asp:ListItem>2</asp:ListItem>
           <asp:ListItem>3</asp:ListItem>

            </asp:DropDownList>
            <br />
            1- yönetici<br />
            2- kullanıcı<br />
            <asp:Button ID="newuser" runat="server" OnClick="newuser_Click" Text="Ekle" />
            </div>
   
     <div class="allusers">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="k_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="k_id" HeaderText="k_id" InsertVisible="False" ReadOnly="True" SortExpression="k_id" />
                    <asp:BoundField DataField="k_ad" HeaderText="k_ad" SortExpression="k_ad" />
                    <asp:BoundField DataField="k_soyad" HeaderText="k_soyad" SortExpression="k_soyad" />
                    <asp:BoundField DataField="k_email" HeaderText="k_email" SortExpression="k_email" />
                    <asp:BoundField DataField="k_tel" HeaderText="k_tel" SortExpression="k_tel" />
                    <asp:BoundField DataField="k_parola" HeaderText="k_parola" SortExpression="k_parola" />
                </Columns>
            </asp:GridView>
                
                
                
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelAgencySystemConnectionString %>" SelectCommand="SELECT * FROM [UserContac]"></asp:SqlDataSource>
                
                
                
                
                <asp:DropDownList ID="deleteuser" runat="server" DataSourceID="SqlDataSource1" DataTextField="k_id" DataValueField="k_id" AutoPostBack="True" >
                </asp:DropDownList>
                <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Sil" />
                
            </div>
        
</asp:Content>

