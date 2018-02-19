<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="CustomerProfile.aspx.cs" Inherits="MobileWorld.CustomerProfile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/css">
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
</script>
<script type="text/javascript">
    function display(id) {
        if (id == 'div1') {
            document.getElementById('div1').style.display = 'block';
            document.getElementById('div10').style.display = 'none';

//            document.getElementById('tab1').style.background = 'Silver';
//            document.getElementById('tab5').style.background = '
//            

              document.getElementById('tab1').style.color = 'Silver';
              document.getElementById('tab5').style.color = 'Black';
        }
        else if (id == 'div10') {
            document.getElementById('div1').style.display = 'none';
            document.getElementById('div10').style.display = 'block';

//            document.getElementById('tab1').style.background = 'White';
//            document.getElementById('tab5').style.background ='Silver';

            document.getElementById('tab1').style.color = 'Black';
            document.getElementById('tab5').style.color = 'Silver';

        }
    }
</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="div10" class="tabArea" 
        style="display:block; left:86px; top:161px; position:absolute; height: 142px;">        
          <asp:UpdatePanel ID="Updatepanel6" runat="server">
            <ContentTemplate>
            <table style="width: 100%; height: 277px;">
            
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
                <asp:Button ID="btnSubmit1" runat="server" Text="Submit"  OnClick="btnSubmit1_Click"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                </td>                
                </tr>                
            </table> 
            </ContentTemplate>
          </asp:UpdatePanel>       
        </div>    
    <asp:Button ID="BtnShowProfile" runat="server" 
        Text="Show Profile" 
        Style="z-index: 1;
        left: 702px; top: 109px; position: absolute; height: 47px; width: 111px;" 
        OnClick="BtnShowProfile_Click" />
    <asp:ModalPopupExtender ID="BtnShowProfile_ModalPopupExtender" runat="server" DynamicServicePath=""
        Enabled="True" TargetControlID="BtnShowProfile" PopupControlID="ShowProfile"
        CancelControlID="btnCancel2" Drag="True" DropShadow="True">
    </asp:ModalPopupExtender>
    <div style="position: absolute; top: 96px; left: 73px; color: Black; height: 44px; width: 106px;" class="tab"
            onclick="display('div1')" id="tab1">
            Track Status
        </div>
    <div style="position:absolute; top:97px; left:189px; height: 42px;" 
            class="tab" onclick="display('div10')" 
        id="tab5">Change Password<br />
         </div>
    <div  id="div1" class="tabArea" style="display:none" >
   
   
        <div id="ShowProfile" 
        style="display: block; height: 577px; margin-left: 40px; width: 584px; background-color: #C0C0C0;">
         <asp:UpdatePanel ID="UpdatePanel3" runat="server">
    <ContentTemplate>

        <h1 class="style4">
            My Profile</h1>
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
                    <asp:Label ID="lblstatus1" runat="server" Text="Label" Style="z-index: 1; left: 74px;
                        top: 434px; position: absolute; width: 134px"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        </ContentTemplate>
    </asp:UpdatePanel>
     <asp:Button ID="btnCancel2" runat="server" Text="Cancel" Style="z-index: 1; left: 368px;
                        top: 358px; position: absolute; width: 74px;" OnClick="btnCancel2_Click" />
    </div>
    
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
    <asp:Panel ID="PanelStatusCheck" runat="server" 
        style="z-index: 1; left: 98px; top: 307px; position: absolute; height: 188px; width: 373px">
        <asp:Label ID="Label1" runat="server" Text="Enter Track id : "></asp:Label>
        &nbsp;<asp:TextBox ID="textTrack" runat="server" Height="29px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;


        
        <asp:Label ID="lblStatusdelivery" runat="server" 
            style="z-index: 1; left: 350px; top: 100px; position: absolute" 
            ForeColor="Black" BackColor="#FFBB55" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="GetStatus" />
    </asp:Panel>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    </ContentTemplate>
    </asp:UpdatePanel>

    

    
    

    
    
   
    
</asp:Content>
