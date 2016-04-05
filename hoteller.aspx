<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIndex.master" AutoEventWireup="true" CodeFile="hoteller.aspx.cs" Inherits="hoteller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="content/vitrin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="vitrin">
    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" >
            <ItemTemplate>
                
                <div class="vitrin_ilan">
                    <div class="ilan_baslik">
                        <%# DataBinder.Eval(Container.DataItem, "h_adi") %>
                       
                    </div>
                    <div class="ilan_resim">
                        <img src="images/hotelresim/<%#DataBinder.Eval(Container.DataItem, "h_resim") %>" height="150" width="160" />
                    </div>
                    <div class="ilan_bilgi">
                        <%#DataBinder.Eval(Container.DataItem,"h_ozellikler") %>
                    </div>
                </div>
                      
            </ItemTemplate>
        </asp:DataList>
   </div>
</asp:Content>

