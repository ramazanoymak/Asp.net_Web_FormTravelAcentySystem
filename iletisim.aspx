<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIndex.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div id="navgiris" aling="center">
 

       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
<div id="giris" align="center">

<div class="table">
<table width="242" height="114" border="0" align="center">
  <tr>
    <th scope="col" class="auto-style2">E-Posta :</th>
    <th width="109" scope="col" class="auto-style3">
        <asp:TextBox ID="Textmail" runat="server" Height="24px" TextMode="Email"></asp:TextBox>
      </th>
  </tr>
  <tr>
    <td align="center" class="auto-style2"><strong>Mesaj :</strong></td>
    <td class="auto-style3">
        <asp:TextBox ID="Textmsj" runat="server" Height="24px" TextMode="MultiLine"></asp:TextBox>
      </td>
  </tr>
</table>
    </div>
   <div id="alt" aling="center">

&nbsp;<asp:Button ID="Button1" runat="server" Text="Gönder" Height="35px" Width="104px" OnClick="Button1_Click" />
       </div>
</div>

</div>
</asp:Content>

