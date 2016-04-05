<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/MasterPageIndex.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="content/vitrin.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="vitrin">
    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" >
            <ItemTemplate>
                
                <div class="vitrin_ilan">
                    <div class="ilan_baslik">
                        <%# DataBinder.Eval(Container.DataItem, "p_name") %>
                       
                    </div>
                    <div class="ilan_resim">
                        <img src="images/hotelresim/<%#DataBinder.Eval(Container.DataItem, "p_resim") %>" height="150" width="160" />
                    </div>
                    <div class="ilan_bilgi">
                        <%#DataBinder.Eval(Container.DataItem,"p_price") %>-
                         <%#DataBinder.Eval(Container.DataItem,"description") %>
                    </div>
                </div>
                      
            </ItemTemplate>
        </asp:DataList>
   </div>
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

   
     
</asp:Content>



