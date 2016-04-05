<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIndex.master" AutoEventWireup="true" CodeFile="turlar.aspx.cs" Inherits="turlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="content/vitrin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="vitrin">
    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" >
            <ItemTemplate>
                
                <div class="vitrin_ilan">
                    <div class="ilan_baslik">
                        <%# DataBinder.Eval(Container.DataItem, "tname") %>
                       
                    </div>
                    <div class="ilan_resim">
                        <img src="images/hotelresim/<%#DataBinder.Eval(Container.DataItem, "t_resim") %>" height="150" width="160" />
                    </div>
                    <div class="ilan_bilgi">
                        <%#DataBinder.Eval(Container.DataItem,"startPlace") %>- 
                         <%#DataBinder.Eval(Container.DataItem,"endPlace") %>
                    </div>
                </div>
                      
            </ItemTemplate>
        </asp:DataList>
   </div>
</asp:Content>

