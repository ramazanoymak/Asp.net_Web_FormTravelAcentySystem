<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIndex.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Kayit_ol.aspx.cs" Inherits="Kayit_ol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .nav {
            height: 30px;
            font-size:large;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
     
    <div id="kayıt">
<div align="center" class="nav" aria-atomic="True" > Kayıt Formu  </div>

<div class="table" align="center">



  <table  border="0" align="center" style="height: 149px; width: 276px">
    <tr>
      <td width="103" align="center">Kullanıcı Adı :</td>
      <td width="101" align="center">
          <asp:TextBox ID="Textk_ad" runat="server"></asp:TextBox>
        </td>
    </tr>
   <tr>
      <td align="center"><strong>E-Posta :</strong></td>
      <td align="center">
          <asp:TextBox ID="Textemail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td align="center"><strong>Parola :</strong></td>
      <td align="center">
          <asp:TextBox ID="Textpassword" TextMode="Password" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
      <td align="center"><strong>Parola Tekrar :</strong></td>
      <td align="center">
          <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
        </td>
    </tr>
  </table>
</div>
<div class="alt" align="center">

    <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" Height="32px" Width="108px" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="Medium"></asp:Label>
</div>


</div>
        

   

</asp:Content>