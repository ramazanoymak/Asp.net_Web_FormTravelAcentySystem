<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIndex.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Giris_yap.aspx.cs" Inherits="Giris_yap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #giris {
            height: 154px;
        }
        .auto-style2 {
            width: 117px;
            height: 35px;
        }
        .auto-style3 {
            height: 35px;
        }
        Label1 {
            font-size:large;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <asp:Panel ID="Panelgiris" runat="server">
   <div id="navgiris" aling="center">
 
 <table  border="0" align="center">
  <tr>
    <th  scope="col"> <asp:Label ID="Label1" runat="server" Text="Lütfen Giriş Yapın." Font-Size="Large"></asp:Label></th>
   
  </tr>
</table>
       
    </div>
<div id="giris" align="center">

<div class="table">
<table width="242" height="114" border="0" align="center">
  <tr>
    <th scope="col" class="auto-style2">Kullanıcı Adı :</th>
    <th width="109" scope="col" class="auto-style3">
        <asp:TextBox ID="TextBox1" runat="server" Height="24px"></asp:TextBox>
      </th>
  </tr>
  <tr>
    <td align="center" class="auto-style2"><strong>Parola :</strong></td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" Height="24px"></asp:TextBox>
      </td>
  </tr>
</table>
    </div>
   <div id="alt" aling="center">

&nbsp;<asp:Button ID="Button1" runat="server" Text="Giriş Yap" Height="35px" Width="104px" OnClick="Button1_Click" />
       </div>
</div>

</div>
        </asp:Panel>

     <asp:Panel ID="Panelkullanici" runat="server">
        Değerli
        <asp:Label ID="Label2" runat="server"></asp:Label>

        &nbsp;Hoş geldiniz !
         
         
                
           
         </asp:Panel>
     </asp:Panel>
</asp:Content>
