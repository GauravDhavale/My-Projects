<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="product.aspx.cs" Inherits="MobileWorld.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .layer
        {
            background: rgb(183,222,232);
            background: rgba(183,222,232,0.6);
        }
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            color: #FFFFFF;
        }
        .style3
        {
            color: #FFFFFF;
        }
        .style6
        {
            color: #0000CC;
        }
        .style
        {
        }
        .btn
        {
            background: rgb(133, 190, 190);
            color: White;
        }
        #Button2
        {
            z-index: 1;
            left: 716px;
            top: 206px;
            position: absolute;
            height: 24px;
            width: 92px;
        }
        
        .style7
        {
            width: 81px;
        }
        .style8
        {
            width: 139px;
        }
        
        .blocker
        {
            position: absolute;
            left: 0px;
            top: 0px;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=80)";
            background: rgba(20, 20, 20, 0.7);
            width: 100%;
            height: 2000px;
            z-index: 1;
        }
        
        .popup
        {
            position: absolute;
            left: 100px;
            top: 300px;
            z-index: 3;
            width: auto;
            height: auto;
            background-color: White;
            border: 3px;
            border-style: inset;
            border-color: #444444;
        }
        
        .close
        {
            width: 30px;
            height: 30px;
            background: #00FF99;
            color: #006666;
            font-weight: bolder;
            border-radius: 10px;
        }
        
        .big
        {
            width: 100px;
            height: 50px;
            background: #00FF99;
            color: #006666;
            font-weight: bolder;
        }
    </style>
    <script type="text/javascript">
        function showPopup() {
            document.getElementById("block").style.display = 'block';
            document.getElementById("pop").style.display = 'block';
        }

        function hidePopup() {
            document.getElementById("block").style.display = 'none';
            document.getElementById("pop").style.display = 'none';
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        &nbsp;<span class="style1"><font size="5px"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            PRODUCT DETAILS</strong></font></span><br />
        <br />
        <br />
    </div>
    <div style="width: 326px; height: 450px; position: absolute; left: 439px; top: 130px;">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
        </strong><span class="style3"><strong>SPECIFICATIONS</strong></span><br />
        <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <div style="width: 335px; height: 348px; position: absolute; left: 58px; top: 131px;">
            <asp:Image ID="Image1" runat="server" Style="z-index: 1; left: -360px; top: -112px;
                position: absolute; height: 291px; width: 206px" />
        </div>
        <asp:DataList ID="DataList1" runat="server" Height="300px" Style="margin-right: 130px"
            RepeatColumns="1" OnEditCommand="edit" OnUpdateCommand="update" DataKeyField="did"
            OnCancelCommand="cancel" OnDeleteCommand="delete" Width="257px" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" OnItemDataBound="DataList1_ItemDataBound">
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <HeaderTemplate>
                <table width="85%" border="2px">
                    <tr>
                        <th style="width: 250px">
                            Product
                        </th>
                        <th style="width: 100px">
                            specification
                        </th>
                    </tr>
            </HeaderTemplate>
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <EditItemTemplate>
                <tr>
                    <td class="style7">
                        brand:
                    </td>
                    <td>
                        <asp:TextBox ID="txtbrand" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, "brand") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        model:
                    </td>
                    <td>
                        <asp:TextBox ID="txtmodel" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, "model") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        networktype:
                    </td>
                    <td>
                        <asp:TextBox ID="txtnetwork" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, "networktype")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        simtype:
                    </td>
                    <td>
                        <asp:TextBox ID="txtsimtype" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, "simtype")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Dimension:
                    </td>
                    <td>
                        <asp:TextBox ID="txtDimension" runat="server" Text='  <%# DataBinder.Eval(Container.DataItem, "dimension")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        cpu:
                    </td>
                    <td>
                        <asp:TextBox ID="txtcpu" runat="server" Text='   <%# DataBinder.Eval(Container.DataItem, "cpu")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        rom:
                    </td>
                    <td>
                        <asp:TextBox ID="txtrom" runat="server" Text='   <%# DataBinder.Eval(Container.DataItem, " rom")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        ram:
                    </td>
                    <td>
                        <asp:TextBox ID="txtram" runat="server" Text='   <%# DataBinder.Eval(Container.DataItem, " ram")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        memory:
                    </td>
                    <td>
                        <asp:TextBox ID="txtmemory" runat="server" Text='   <%# DataBinder.Eval(Container.DataItem, " memory")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        camera:
                    </td>
                    <td>
                        <asp:TextBox ID="txtcamera" runat="server" Text='   <%# DataBinder.Eval(Container.DataItem, " camera")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        wifi:
                    </td>
                    <td>
                        <asp:TextBox ID="txtwifi" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, " wifi")%>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        price:
                    </td>
                    <td>
                        <asp:TextBox ID="txtprice" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, " price")%>'></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="update1" runat="server" CommandName="update">Update</asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="cancel" runat="server" CommandName="cancel">cancel</asp:LinkButton>
                    </td>
                </tr>
            </EditItemTemplate>
            <ItemTemplate>
                <br />
                <tr>
                    <td class="style7">
                        brand:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "brand") %>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        model:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "model") %>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        networktype:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "networktype")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        simtype:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "simtype")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        dimension:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "dimension")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        cpu:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "cpu")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        rom:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "rom")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        ram:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "ram")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        memory:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "memory")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        camera:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "camera")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        wifi:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "wifi")%>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        price:
                    </td>
                    <td class="style8">
                        <%# DataBinder.Eval(Container.DataItem, "price")%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="edit" runat="server" CommandName="edit" CommandArgument="edit">edit</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterStyle BackColor="Tan" />
            <FooterTemplate>
                <tr>
                </tr>
                </table></FooterTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
        <br />
    </div>
    <div style="width: 770px; height: 269px; position: absolute; left: 109px; top: 658px;"
        align="center" class="layer">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="gridSeller" runat="server" AutoGenerateColumns="False" Height="226px"
            Style="margin-left: 0px; margin-top: 0px; margin-bottom: 0px" 
            Width="603px" BackColor="White"
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1"
            GridLines="None" OnRowUpdating="gridSeller_RowUpdating" OnRowDataBound="gridSeller_RowDataBound"
            OnSelectedIndexChanged="gridSeller_SelectedIndexChanged" 
            onload="gridSeller_Load" onrowdeleting="gridSeller_RowDeleting">
            <Columns>
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:Button ID="cartButton" runat="server" Text="Add to Cart" 
                            CommandName="Update" onclick="cartButton_Click1" />
                        <asp:ImageButton ID="ImageButtonDelete"  CommandName="Delete" Width="35" runat="server" ImageUrl="~/Image/red-delete-button.jpg" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Seller's Name">
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "name") %>'></asp:Label>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "username") %>'
                            Visible="False"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="lblPrice" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "price")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="lblQuant" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "quant")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <input id="BtnshowCart" type="button" value="SHOW CART" onclick="showPopup()" 
            style="font-family: 'Times New Roman', Times, serif; z-index: 1; left: 76px; top: 4px; position: absolute; height: 26px; width: 106px;" />
        <br />
    </div>
    <br />
    <br />
    <div class="blocker" id="blocker" style="display: none;">
    </div>
    <
    <div class="blocker" style="display: none;" id="block">
        <div class="popup" id="pop" style="display: none;">
            <table>
                <tr>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="259px"
                                    OnRowDeleting="GridView2_RowDeleting" Width="564px">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Product Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblProd" runat="server" Text='<%#Eval("ProductName")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Price">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("Price")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Seller name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("SellerName")%>'></asp:Label>
                                                <asp:Label ID="lblUName" runat="server" Text='<%#Eval("SellerUserId")%>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Quantity">
                                            <ItemTemplate>
                                               <%-- <asp:DropDownList ID="dropQuant" runat="server">
                                                </asp:DropDownList>--%>
                                                <asp:Label ID="lblQuant" runat="server" Text='<%#Eval("Quant")%>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Delete" ImageUrl="~/Image/delete.jpg"
                                                    Width="30px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <input id="close" type="button" value="X" class="close" onclick="hidePopup()" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" BackColor="#00FF99"
                            Font-Bold="True" ForeColor="#006666" onclick="btnContinue_Click" />
                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" BackColor="#66FF66" Font-Bold="True"
                            ForeColor="#006666" onclick="btnCheckout_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
