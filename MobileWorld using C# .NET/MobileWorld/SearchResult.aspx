<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="SearchResult.aspx.cs" Inherits="MobileWorld.SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="z-index: 1; left: 243px; top: 345px; position: absolute; height: 547px; width: 550px">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
            CssClass="phonesList">
            <ItemTemplate>
                <img src='<%# DataBinder.Eval(Container.DataItem, "imgPath") %>' width="170" height="220"
                    alt="" /><br />
                <%# DataBinder.Eval(Container.DataItem, "brand")%>&nbsp;<%# DataBinder.Eval(Container.DataItem, "model")%><br /><a href='product.aspx?did=<%# DataBinder.Eval(Container.DataItem, "did") %>'>Show
                    Product</a>
                <%-- <asp:Label ID="lbldid" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "did")%>'  Visible="False"></asp:Label>--%>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
