<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Admin.aspx.cs" Inherits="MobileWorld.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tab
        {
            width: 120px;
            height: 50px;
            -webkit-border-top-right-radius: 15px;
            font-family: Candara;
            font-weight: bold;
            text-align: center;
            color: Black;
            z-index: 1;
            left: 442px;
            top: 95px;
            position: absolute;
        }
        
        .tabFirst
        {
            width: 120px;
            height: 50px;
            background: rgba(20, 20, 20, 0.8);
            -webkit-border-top-right-radius: 15px;
            font-family: Candara;
            font-weight: bold;
            text-align: center;
            color: White;
        }
        
        .tabArea
        {
            width: 892px;
            height: auto;
            position: absolute;
            left: 73px;
            top: 146px;
            -webkit-border-top-right-radius: 20px;
            -webkit-border-bottom-right-radius: 20px;
            -webkit-border-bottom-left-radius: 20px;
            font-family: Candara;
            font-weight: bold;
            color: White;
            background-color:Gray;
           
        }
        
        h1
        {
            font-family: Candara;
            font-weight: bold;
            color: White;
            text-shadow: 3px 3px #555555;
        }
        .style1
        {
            color: #000000;
            width: 192px;
        }
        .style2
        {
            width: 287px;
        }
        .style3
        {
            width: 192px;
            height: 43px;
        }
        .style4
        {
            width: 287px;
            height: 43px;
        }
        .style5
        {
            height: 43px;
        }
        .style6
        { color:#000000;
            width: 192px;
            height: 41px;
        }
        .style7
        {
            width: 287px;
            height: 41px;
        }
    </style>
    <script type="text/javascript">

        function display(id) {
            if (id == 'div1') {
                document.getElementById('div1').style.display = 'block';
                document.getElementById('div2').style.display = 'none';
                document.getElementById('div3').style.display = 'none';
                document.getElementById('div4').style.display = 'none';
                document.getElementById('div5').style.display = 'none';

                //                document.getElementById('tab1').style.background = 'silver';
                //                document.getElementById('tab2').style.background = 'White';
                //               document.getElementById('tab3').style.background = 'White';
                //               document.getElementById('tab4').style.background = 'White';

                document.getElementById('tab1').style.color = 'Silver';
                document.getElementById('tab2').style.color = 'Black';
                document.getElementById('tab3').style.color = 'Black';
                document.getElementById('tab4').style.color = 'Black';
                document.getElementById('tab5').style.color = 'Black';
            }

            else if (id == 'div2') {
                document.getElementById('div1').style.display = 'none';
                document.getElementById('div2').style.display = 'block';
                document.getElementById('div3').style.display = 'none';
                document.getElementById('div4').style.display = 'none';
                document.getElementById('div5').style.display = 'none';

                //                                document.getElementById('tab2').style.background = 'silver';
                //                                document.getElementById('tab1').style.background ='White';
                //                                document.getElementById('tab3').style.background = 'White';
                //                                document.getElementById('tab4').style.background = 'White';

                document.getElementById('tab1').style.color = 'Black';
                document.getElementById('tab2').style.color = 'silver';
                document.getElementById('tab3').style.color = 'Black';
                document.getElementById('tab4').style.color = 'Black';
                document.getElementById('tab5').style.color = 'Black';
            }

            else if (id == 'div3') {
                document.getElementById('div1').style.display = 'none';
                document.getElementById('div2').style.display = 'none';
                document.getElementById('div3').style.display = 'block';
                document.getElementById('div4').style.display = 'none';
                document.getElementById('div5').style.display = 'none';


                //                                document.getElementById('tab3').style.background = 'silver';
                //                                document.getElementById('tab2').style.background = 'White';
                //                                document.getElementById('tab1').style.background = 'White';
                //                                document.getElementById('tab4').style.background = 'White';

                document.getElementById('tab1').style.color = 'Black';
                document.getElementById('tab2').style.color = 'Black';
                document.getElementById('tab3').style.color = 'Silver';
                document.getElementById('tab4').style.color = 'Black';
                document.getElementById('tab5').style.color = 'Black';
            }

            else if (id == 'div4') {
                document.getElementById('div1').style.display = 'none';
                document.getElementById('div2').style.display = 'none';
                document.getElementById('div3').style.display = 'none';
                document.getElementById('div4').style.display = 'block';
                document.getElementById('div5').style.display = 'none';

                document.getElementById('tab1').style.color = 'Black';
                document.getElementById('tab2').style.color = 'Black';
                document.getElementById('tab3').style.color = 'Black';
                document.getElementById('tab4').style.color = 'Silver';
                document.getElementById('tab5').style.color = 'Black';
            }         

            else if (id == 'div5') {
                document.getElementById('div1').style.display = 'none';
                document.getElementById('div2').style.display = 'none';
                document.getElementById('div3').style.display = 'none';
                document.getElementById('div4').style.display = 'none';
                document.getElementById('div5').style.display = 'block';

                document.getElementById('tab1').style.color = 'Black';
                document.getElementById('tab2').style.color = 'Black';
                document.getElementById('tab3').style.color = 'Black';
                document.getElementById('tab4').style.color = 'Black';
                document.getElementById('tab5').style.color = 'Silver';
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="z-index: 1; left: 10px; top: 0px; position: absolute; height: 38px; width: 1025px">
        <div align="center" 
            style="z-index: 1; left: -2px; top: -7px; position: absolute; height: 38px; width: 1025px">
            <h4><br />
                ADMIN PAGE</h4>
        </div>
        <div style="position: absolute; top: 96px; left: 73px; color: #000000;" 
            class="tabFirst" onclick="display('div1')"
            id="tab1">
            Add Product<br />
            Specification
        </div>
        <div style="position: absolute; top: 96px; left: 195px;" class="tab" onclick="display('div2')"
            id="tab2">
            Review<br />
            Product
        </div>
        <div style="position: absolute; top: 96px; left: 318px;" class="tab" onclick="display('div3')"
            id="tab3">
            Manage<br />
            Product
        </div>
         
        <div id ="tab4" class="tab" onclick="display('div4')">Track<br />Report
         </div>     
         
         <div id ="tab5" class="tab" onclick="display('div5')" 
            style="position: absolute; top: 95px; left: 575px;">New<br />Request
         </div>      
        
        <div id="div1" class="tabArea" style="display:block">
            <br />
            &nbsp;<table style="width: 91%; height: 557px;">
                <tr>
                    <td align="right" class="style1">
                        Brand
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="DropBrand" runat="server">
                            <asp:ListItem>Accessories</asp:ListItem>
                            <asp:ListItem>Nokia</asp:ListItem>
                            <asp:ListItem>Samsung</asp:ListItem>
                            <asp:ListItem>Sony</asp:ListItem>
                            <asp:ListItem>Iphone</asp:ListItem>
                            <asp:ListItem>Blackberry</asp:ListItem>
                            <asp:ListItem>HTC</asp:ListItem>
                            <asp:ListItem>LG</asp:ListItem>
                            <asp:ListItem>Micromax</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        Model
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtModel" runat="server" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        Network Type
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="DropNetwork" runat="server">
                            <asp:ListItem>2G</asp:ListItem>
                            <asp:ListItem>2G &amp; 3G</asp:ListItem>
                            <asp:ListItem>2G &amp; 3G 4G</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        Sim type
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="DropSimtype" runat="server">
                            <asp:ListItem>GSM</asp:ListItem>
                            <asp:ListItem>CDMA</asp:ListItem>
                            <asp:ListItem>DUAL</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        Dimension&nbsp;
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtDimension" runat="server" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        CPU
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtCpu" runat="server" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        ROM
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtRom" runat="server" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        RAM&nbsp;&nbsp;
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtRam" runat="server" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        Memory
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtMemory" Text="10" runat="server" Width="202px"></asp:TextBox>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        Camera
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtCamera" runat="server" Width="199px"></asp:TextBox>
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        Wifi
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtWifi" Text="802.11b\g\n" runat="server" Width="199px"></asp:TextBox>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1" >
                        Image Path
                    </td>
                    <td class="style4">
                        &nbsp;
                        <asp:FileUpload ID="FileImage" runat="server" />
                        &nbsp;
                    </td>
                    <td class="style5">
                        <asp:Image ID="ImgPhone" runat="server" Style="z-index: 1; left: 573px; top: 48px;
                            position: absolute; height: 309px; width: 206px" />
                        <asp:ImageButton ID="ImgUpload" runat="server" ImageUrl="~/Image/upload.jpg" Style="z-index: 1;
                            top: 469px; position: absolute; width: 138px; height: 41px; right: 198px" 
                            OnClick="ImgUpload_Click" />
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style6">
                        Price
                    </td>
                    <td class="style7">
                        &nbsp;
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        &nbsp;
                    </td>
                    <td class="style2">
                        &nbsp;&nbsp;
                        <asp:ImageButton ID="ImgSubmit" runat="server" ImageUrl="~/Image/submit.jpg" Style="z-index: 1;
                            left: 259px; top: 561px; position: absolute; width: 150px; height: 38px" 
                            OnClick="ImgSubmit_Click" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="labelStatus" runat="server" Style="z-index: 1; left: 178px; top: 11px;
                position: absolute; width: 368px"></asp:Label>
            <br />
            <br />
        </div>

        <div id="div2" class="tabArea" style="display: none">
            <br />
            <br />            
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="241px"
                Width="800px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
                CellPadding="3" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowCommand="GridView1_RowCommand"
                OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField HeaderText="DID">
                        <ItemTemplate>
                            <asp:Label ID="descid" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "descid")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="descid" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "descid")%>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserName">
                        <ItemTemplate>
                            <asp:Label ID="username" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "username")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="username" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "username")%>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="name" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "name")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="name" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "name")%>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name">
                        <ItemTemplate>
                            <asp:Label ID="productname" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "product")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="productname" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "product")%>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="price" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, "price")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="price" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, "price")%>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Posted">
                        <ItemTemplate>
                            <asp:Label ID="dateposted" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "dateposted")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="dateposted" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "dateposted")%>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:Label ID="quantity" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, "quantity")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="quantity" runat="server" Text=' <%# DataBinder.Eval(Container.DataItem, "quantity")%>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Accept/Reject">
                        <ItemTemplate>
                            <asp:Button ID="BtnManage" runat="server" CommandName="Edit" Text="Manage" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="BtnAdd" runat="server" CommandName="Update" Text="Add" Height="26px"
                                Width="73px" />
                            &nbsp;<asp:Button ID="BtnRemove" runat="server" CommandName="Delete" Text="Remove" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            </ContentTemplate>
            </asp:UpdatePanel>
            
            <br />
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            <br />
            <br />
        </div>

        <div id="div3" class="tabArea" style="display: none">
          Please go to Home Page Or Search it...
        </div>   
        
        <div id="div4" class="tabArea" style="display:none"  >
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
             <asp:GridView ID="GvTrackreport" runat="server" 
                
                style="z-index: 1; left: -3px; top: -6px; position: absolute; height: 205px; width: 890px;" 
                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="customer" HeaderText="customer" 
                        SortExpression="customer" />
                    <asp:BoundField DataField="seller" HeaderText="seller" 
                        SortExpression="seller" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="purchasedate" HeaderText="purchasedate" 
                        SortExpression="purchasedate" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" 
                        SortExpression="quantity" />
                    <asp:BoundField DataField="address" HeaderText="address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="contact" HeaderText="contact" 
                        SortExpression="contact" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="trackid" HeaderText="trackid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="trackid" />
                    <asp:BoundField DataField="status" HeaderText="status" 
                        SortExpression="status" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:conString %>" 
                SelectCommand="SELECT * FROM [customerprod]"></asp:SqlDataSource>
            
            </ContentTemplate>
            </asp:UpdatePanel>



           
        </div> 
        
        <div id="div5" class="tabArea" style="display: none; text-align:center;">
            <asp:GridView ID="gridRequestPhone" runat="server" AutoGenerateColumns="False" Width="500px"
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Brand">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "brand")%>'></asp:Label>                        
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Model">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "model")%>'></asp:Label>                        
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </div>    
    </div>
    <%--</form>--%>
</asp:Content>
