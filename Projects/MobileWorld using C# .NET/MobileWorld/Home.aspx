<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="MobileWorld.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/easySlider1.7.js" type="text/javascript"></script>
    <link href="css/screen.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#slider").easySlider({ auto: true, continuous: true });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ImageButton ID="ImageButton6" runat="server" 
        ImageUrl="~/Image/mobile_world_2.png" onclick="ImageButton6_Click" 
        style="z-index: 1; left: 102px; top: 113px; position: absolute; height: 121px; width: 205px" />
    <%-- <form id="form1" runat="server">--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="z-index: 1; left: 76px; top: 97px; position: absolute; height: 835px;
        width: 899px">
        <tr>
            <td style="border-style: groove" height="445" width="241">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/phone_new.png" Style="z-index: 1;
                            left: 15px; top: 144px; position: absolute; height: 454px; width: 227px;" />
                        <asp:Label ID="Label5" runat="server" ForeColor="White" 
                            style="z-index: 1; left: 28px; top: 547px; position: absolute" 
                            Text="Combine--&gt;"></asp:Label>
                        <asp:ImageButton ID="ImageButtoncombine" runat="server" ImageUrl="~/Image/button_change_color.gif"
                            Style="z-index: 1; left: 104px; top: 531px; position: absolute; height: 49px;
                            width: 53px" OnClick="ImageButtoncombine_Click" />
                        <asp:RadioButtonList ID="radioPrice" runat="server" Style="z-index: 1; left: 52px;
                            top: 388px; position: absolute; height: 125px; width: 149px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                            AutoPostBack="True">
                            <asp:ListItem>&lt;5000</asp:ListItem>
                            <asp:ListItem>5001-15000</asp:ListItem>
                            <asp:ListItem>15001-30001</asp:ListItem>
                            <asp:ListItem>&gt;30000</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Label ID="Label4" runat="server" Font-Bold="False" Style="z-index: 1;
                            left: 92px; top: 348px; position: absolute; width: 64px; height: 20px" 
                            Text="Range" Font-Names="Algerian"></asp:Label>
                        <asp:DropDownList ID="DropBrand" runat="server" Style="z-index: 1; left: 55px; top: 266px;
                            position: absolute; height: 22px; width: 129px" OnSelectedIndexChanged="DropBand_SelectedIndexChanged"
                            AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Style="z-index: 1;
                            left: 81px; top: 234px; position: absolute; width: 101px;" 
                            Text="Show Brand" Font-Names="Algerian"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td style="border-style: groove">
                <div id="slider" style="z-index: 1; left: 326px; top: 13px; position: absolute; height: auto;
                    width: 504px">
                    <ul>
                        <li>
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Image/in_GT-N7100TADINU_018_Dynamic_gray.jpg" 
                                onclick="ImageButton1_Click" />
                        </li>
                        <li>
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/iphone4s.PNG" />
                        </li>
                        <li>
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/iphone5.PNG" />
                        </li>
                        <li>
                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Image/Samsung-Galaxy-S3-white-blue.jpg" />
                        </li>
                    </ul>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div style="position: absolute; left: 265px; top: 282px; height: 539px; width: 620px;
                            margin-right: 4px;">
                            <asp:DataList ID="DataListdisplayproduct" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
                                CssClass="phonesList">
                                <ItemTemplate>
                                    <img src='<%# DataBinder.Eval(Container.DataItem, "imgPath") %>' width="170" height="220"
                                        alt="" /><br />
                                    <asp:Label ID="lblbrand" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "brand")%>'
                                        Font-Bold="False" ForeColor="Black"></asp:Label>
                                    &nbsp;<asp:Label ID="lblmodel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "model")%>'
                                        ForeColor="Black"></asp:Label><br />
                                    <a href='product.aspx?did=<%# DataBinder.Eval(Container.DataItem, "did") %>'>Show Product</a>
                                    <%-- <asp:Label ID="lbldid" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "did")%>'  Visible="False"></asp:Label>--%>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
    <%-- </form>--%>
</asp:Content>
