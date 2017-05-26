<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="SellerProfile.aspx.cs" Inherits="MobileWorld.SellerProfile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tab
        {
            width: 120px;
            height: 50px;
            background: rgba(200, 200, 200, 0.7);
            -webkit-border-top-right-radius: 15px;
            border-top-right-radius: 15px;
            font-family: Candara;
            font-weight: bold;
            text-align: center;
            color: Black;
        }
        
        .tabFirst
        {
            width: 120px;
            height: 50px;
            background: rgba(20, 20, 20, 0.8);
            -webkit-border-top-right-radius: 15px;
            border-top-right-radius: 15px;
            font-family: Candara;
            font-weight: bold;
            text-align: center;
            color: White;
        }
        
        .tabArea
        {
            width: 890px;
            height: 503px;
            position: absolute;
            left: 73px;
            top: 146px;
            border-top-right-radius: 20px;
            border-bottom-right-radius: 20px;
            border-bottom-left-radius: 20px;
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
            color: Black;
            width: 207px;
        }
        #box
        {
            height: 82px;
        }
    </style>
    <script type="text/javascript">

        function show() {
            if (document.getElementById("Checkbox1").checked == true) {
                document.getElementById('box').style.display = 'block';
                document.getElementById('<%= buttonSub.ClientID %>').style.display = 'none';
            }

            if (document.getElementById("Checkbox1").checked == false) {
                document.getElementById('box').style.display = 'none';
                document.getElementById('<%= buttonSub.ClientID %>').style.display = 'block';
            }
        }

        function display(id) {
            if (id == 'div1') {
                document.getElementById('div1').style.display = 'block';
                document.getElementById('div2').style.display = 'none';
                document.getElementById('div3').style.display = 'none';
               document.getElementById('div10').style.display = 'none';

//                document.getElementById('tab1').style.background = 'rgba(20, 20, 20, 0.8)';
//                document.getElementById('tab2').style.background = 'rgba(200, 200, 200, 0.7)';
//                document.getElementById('tab3').style.background = 'rgba(200, 200, 200, 0.7)';
                //                document.getElementById('tab4').style.background = 'rgba(200, 200, 200, 0.7)';
                document.getElementById('tab5').style.background = 'White';

                document.getElementById('tab1').style.color = 'Silver';
                document.getElementById('tab2').style.color = 'Black';
                document.getElementById('tab3').style.color = 'Black';
              document.getElementById('tab5').style.color = 'Black';
            }

            else if (id == 'div2') {
                document.getElementById('div1').style.display = 'none';
                document.getElementById('div2').style.display = 'block';
                document.getElementById('div3').style.display = 'none';
                document.getElementById('div10').style.display = 'none';

//                document.getElementById('tab2').style.background = 'rgba(20, 20, 20, 0.8)';
//                document.getElementById('tab1').style.background = 'rgba(200, 200, 200, 0.7)';
//                document.getElementById('tab3').style.background = 'rgba(200, 200, 200, 0.7)';
                //                document.getElementById('tab4').style.background = 'rgba(200, 200, 200, 0.7)';
                document.getElementById('tab5').style.background = 'White';

                document.getElementById('tab1').style.color = 'Black';
                document.getElementById('tab2').style.color = 'Silver';
                document.getElementById('tab3').style.color = 'Black';
               document.getElementById('tab5').style.color = 'Black';
            }

            else if (id == 'div3') {
                document.getElementById('div1').style.display = 'none';
                document.getElementById('div2').style.display = 'none';
                document.getElementById('div3').style.display = 'block';
              document.getElementById('div10').style.display = 'none';

//               document.getElementById('tab3').style.background = 'rgba(20, 20, 20, 0.8)';
//                document.getElementById('tab2').style.background = 'rgba(200, 200, 200, 0.7)';
//                document.getElementById('tab1').style.background = 'rgba(200, 200, 200, 0.7)';
                //                document.getElementById('tab4').style.background = 'rgba(200, 200, 200, 0.7)';
                document.getElementById('tab5').style.background = 'White';

                document.getElementById('tab1').style.color = 'Black';
                document.getElementById('tab2').style.color = 'Black';
                document.getElementById('tab3').style.color = 'Silver';
                document.getElementById('tab5').style.color = 'Black';
            }

//            else if (id == 'div4') {
//                document.getElementById('div1').style.display = 'none';
//                document.getElementById('div2').style.display = 'none';
//                document.getElementById('div3').style.display = 'none';
//              //  document.getElementById('div4').style.display = 'block';

////              document.getElementById('tab4').style.background = 'rgba(20, 20, 20, 0.8)';
////                document.getElementById('tab2').style.background = 'rgba(200, 200, 200, 0.7)';
////                document.getElementById('tab3').style.background = 'rgba(200, 200, 200, 0.7)';
////                document.getElementById('tab1').style.background = 'rgba(200, 200, 200, 0.7)';

//                document.getElementById('tab1').style.color = 'Black';
//                document.getElementById('tab2').style.color = 'Black';
//                document.getElementById('tab3').style.color = 'Black';
//                document.getElementById('tab4').style.color = 'Silver';
            //            }
            else if (id == 'div10') {
                document.getElementById('div1').style.display = 'none';
                document.getElementById('div2').style.display = 'none';
                document.getElementById('div3').style.display = 'none';
          //      document.getElementById('div4').style.display = 'none';
                document.getElementById('div10').style.display = 'block';

    //            document.getElementById('tab4').style.background = 'rgba(20, 20, 20, 0.7)';
                document.getElementById('tab2').style.background = 'White';
                document.getElementById('tab3').style.background = 'White';
                document.getElementById('tab1').style.background = 'White';
                document.getElementById('tab5').style.background = 'Silver';


                document.getElementById('tab1').style.color = 'Black';
                document.getElementById('tab2').style.color = 'Black';
                document.getElementById('tab3').style.color = 'Black';
                document.getElementById('tab5').style.color = 'White';
       //         document.getElementById('tab4').style.color = 'Black';

            }

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
    <asp:Button ID="BtnShowInfo" runat="server" Text="Show Personal Information" 
        Style="z-index: 1;
        left: 738px; top: 107px; position: absolute; width: 170px; height: 42px;" 
        onclick="BtnShowInfo_Click" />
    <asp:ModalPopupExtender ID="BtnShowInfo_ModalPopupExtender" runat="server" 
        DynamicServicePath="" Enabled="True" TargetControlID="BtnShowInfo" 
        PopupControlID="div5" Drag="True" DropShadow="False" 
        CancelControlID="btnCancel1">
    </asp:ModalPopupExtender>
    <div >
        <div align="center">
            <h3>
                SELLER PAGE</h3>
        </div>
        <div style="position: absolute; top: 96px; left: 73px; color: Black;" class="tabFirst"
            onclick="display('div1')" id="tab1">
            Add Product<br />
            Specification
        </div>
        <div style="position: absolute; top: 96px; left: 195px;" class="tab" onclick="display('div2')"
            id="tab2">
            Update<br />
            Product
        </div>
        <div style="position: absolute; top: 96px; left: 318px;" class="tab" onclick="display('div3')"
            id="tab3">
            Pending<br />
            Delivery
        </div> 
        <div style="position:absolute; top:96px;left:443px;" 
            class="tab" onclick="display('div10')" 
        id="tab5">Change Password<br />
         </div>       
        <div id="div1" class="tabArea" style="display: block">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <table style="width: 91%; height: 104px;">
                <tr>
                    <td align="right" class="style1">
                        &nbsp;Mobile Brand
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="dropBrand" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dropBrand_SelectedIndexChanged"
                            Style="z-index: 1; left: 232px; top: 53px; position: absolute; height: 21px;
                            width: 118px; right: 540px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        Mobile Model
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="dropModel" runat="server" Height="21px" AutoPostBack="True"
                            Width="122px" OnSelectedIndexChanged="dropModel_SelectedIndexChanged1">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" id="Checkbox1" onclick="show()" />
            &nbsp;<asp:Label ID="lblmsg" runat="server" Text="----Mobile not present in list?? Click here----"
                ForeColor="Black"></asp:Label>
            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>

                <div id="box" style="display: none;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmobilebrand" runat="server" Text="Mobile Brand" ForeColor="Black"
                    Style="z-index: 1; left: 84px; top: 223px; position: absolute"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="textReqBrand" runat="server" Style="z-index: 1; left: 229px; top: 219px;
                    position: absolute"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMobileModel" runat="server" Text=" Mobile Model" ForeColor="Black"
                    Style="z-index: 1; left: 80px; top: 262px; position: absolute"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="textReqModel" runat="server" Style="z-index: 1; left: 226px; top: 260px;
                    position: absolute; width: 130px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnPhoneRequest" runat="server" Text="Post Mobile Request" OnClick="btnPhoneRequest_Click"/>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblRequest" runat="server" Text=""></asp:Label>
                </div>

                </ContentTemplate>
            </asp:UpdatePanel>            
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="LblPrice" runat="server" Text="Price" ForeColor="Black" Style="z-index: 1;
                left: 81px; top: 405px; position: absolute; width: 85px; height: 20px;"></asp:Label>
            
            <asp:TextBox ID="textPrice" runat="server" Style="z-index: 1; left: 197px; top: 405px;
                position: absolute; width: 130px; height: 23px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblQuantity" runat="server" Text="Quantity" ForeColor="Black" Style="z-index: 1;
                left: 80px; top: 445px; position: absolute"></asp:Label>
            &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="textQuant" runat="server" Style="z-index: 1; left: 198px; top: 445px;
                position: absolute; width: 131px;"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:Button ID="buttonSub" runat="server" Text="Submit" Style="height: 24px; z-index: 1;
                left: 251px; top: 515px; position: absolute; width: 94px;" 
                OnClick="buttonSub_Click" CausesValidation="False" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <asp:Label ID="lblStatus" runat="server" ForeColor="Black" 
                style="z-index: 1; left: 201px; top: 431px; position: absolute"></asp:Label>
        </div>
        <div id="div2" class="tabArea" style=" display: none">
            <br />
            <br />
            <br />
           
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="592px"
                        Height="242px" OnRowEditing="GridView1_RowEditing" DataKeyNames="did" ViewStateMode="Enabled"
                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                        CellPadding="3" OnRowUpdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "did")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "did")%>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "prodname")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "prodname")%>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "sellerprice")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPrice" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "sellerprice")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>                            
                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "quantity")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtQuant" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "quantity")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:Button ID="edit" runat="server" CommandName="Edit" cText="EDIT" Text="EDIT" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Button ID="update" runat="server" CommandName="Update" Text="UPDATE" />
                                </EditItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
            <asp:Label ID="Label1" runat="server" ForeColor="Black" 
                style="z-index: 1; left: 62px; top: 412px; position: absolute"></asp:Label>
        </div>
        <div id="div3" class="tabArea" style="display: none">
           <asp:GridView ID="gridPending" runat="server" AutoGenerateColumns="False" onrowupdating="gridPending_RowUpdating">
            <Columns>
              <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("pname")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("price")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Buyer name">
                    <ItemTemplate>
                        <asp:Label ID="lblBuyer" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="lblQuant" runat="server" Text='<%#Eval("quantity")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Purchase Date">
                    <ItemTemplate>
                        <asp:Label ID="lblDate" runat="server" Text='<%#Eval("date")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="lblAddress" runat="server" Text='<%#Eval("address")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:Label ID="lblContact" runat="server" Text='<%#Eval("contact")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="E-Mail">
                    <ItemTemplate>
                        <asp:Label ID="lblMail" runat="server" Text='<%#Eval("mail")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Track-id">
                    <ItemTemplate>
                        <asp:Label ID="lblTrack" runat="server" Text='<%#Eval("trackid")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Deliver" CommandName="Update" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />

        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>  
        <div id="div10" class="tabArea" style="display:none">
          <asp:UpdatePanel ID="Updatepanel6" runat="server">
            <ContentTemplate>
            <table style="width: 100%;">
            
                <tr>
                    <td align="left">
                       <asp:Label ID="lblCurrent" runat="server" Text="Enter Current Password"></asp:Label>
                    </td>
                    <td align="left">
                        
                        <asp:TextBox ID="txtCurrent" runat="server" 
                            ontextchanged="txtCurrent_TextChanged" TextMode="Password"
                            AutoPostBack="True" ></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblPassword" runat="server" 
                            BackColor="#CC6600" ForeColor="Yellow" 
                            Text=""></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="lblNew" runat="server" Text="Enter New Password"></asp:Label>                        
                    </td>

                    <td align="left">
                        <asp:TextBox ID="txtNew" runat="server" TextMode="Password" ></asp:TextBox>                        
                    </td>
                </tr>
                <tr>
                <td align="left"><asp:Label ID="lblConfirm" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td align="left"><asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" ></asp:TextBox>
                </td>
                </tr>                
                <tr>
                <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClick="btnSubmit_Click"  />
                </td>
                <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                </td>                
                </tr>                
            </table> 
            </ContentTemplate>
          </asp:UpdatePanel>       
        </div>
              
    </div>
   
    <div id="div5" 
        style=" display: block; height: 507px; margin-left: 40px; z-index: 1; left: 200px; top: 374px; position: absolute; width: 584px; background-color: #C0C0C0;">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
        <br />
        <br />        
       <h1 class="style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  My Profile</h1>
        <table style="width: 100%;">
            <tr>
                <td align="right" class="style5">
                    Name:
                </td>
                <td align="left" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                        ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    Username:
                    <br />
                </td>
                <td align="left" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtUserName" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    Address:
                </td>
                <td align="left" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtAddress" runat="server" ReadOnly="true"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress"
                        ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style8">
                    Email:
                </td>
                <td align="left" class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEmail" runat="server" ReadOnly="true"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtEmail" ErrorMessage="A Valid Email Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    ContactNo:
                </td>
                <td align="left" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtContactno" runat="server" ReadOnly="true"></asp:TextBox>
                    &nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactno"
                        ErrorMessage="Contact No. Required"></asp:RequiredFieldValidator>
                    &nbsp;<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContactno"
                        ErrorMessage="A valid Contact Required" ValidationExpression="\d\d\d\d\d\d\d\d\d\d"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    Type:
                </td>
                <td align="left" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtType" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" Width="65px" />
                </td>
                <td align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"
                        Width="65px" />
                </td>
            </tr>
            <tr>
                <td align="center">                    
                    &nbsp;
                    <asp:Label ID="lblstatus1" runat="server" Text="" style="z-index: 1; left: 118px; top: 434px; position: absolute; width: 209px"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        </ContentTemplate>
        </asp:UpdatePanel>        
        <asp:Button ID="btnCancel1" runat="server" Text="Cancel" 
            style="z-index: 1; left: 382px; top: 385px; position: absolute; width: 74px;" />
    </div>
   
    
</asp:Content>
