<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay.aspx.cs" Inherits="MobileWorld.Pay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 104px;
        }
        .style2
        {
            width: 104px;
            height: 35px;
        }
        .style3
        {
            height: 35px;
        }
        .style24
        {
            color: #CC9900;
        }
        .style30
        {
            width: 133px;
        }
        .style50
        {
            width: 180px;
        }
        .style37
        {
            color: #CCFFFF;
            background-color: #CCCC00;
        }
        .style49
        {
            width: 124px;
        }
        .style36
        {
            width: 181px;
        }
        .style38
        {
            width: 133px;
            height: 83px;
        }
        .style47
        {
            width: 180px;
            height: 83px;
        }
        .style40
        {
            width: 124px;
            height: 83px;
        }
        .style41
        {
            width: 181px;
            height: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="z-index: 1; left: 49px; top: 50px; position: absolute; height: 864px;
        width: 924px; background-image: url('Image/master_page_bg.png');">
        <br />
        <br />
        <asp:CheckBox ID="checkAddress" runat="server" AutoPostBack="True" OnCheckedChanged="checkAddress_CheckedChanged"
            Text="Address same as in Registration" Style="z-index: 1; left: 39px; top: 38px;
            position: absolute" />
        <br />
        <asp:Panel ID="panelAddress" runat="server" Style="z-index: 1; left: 340px; top: 45px;
            position: absolute; height: 165px; width: 469px">
            <table style="width: 100%; height: 165px;">
                <tr>
                    <td class="style1">
                        Address
                    </td>
                    <td>
                        <asp:TextBox ID="textAddress" runat="server" Height="63px" Rows="5" Width="270px"
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Contact no.
                    </td>
                    <td>
                        <asp:TextBox ID="textContact" runat="server" Width="266px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        E-mail
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="textMail" runat="server" Width="265px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
       
                <asp:RadioButton ID="radioCard" runat="server" AutoPostBack="True" GroupName="rado"
                    OnCheckedChanged="radioCard_CheckedChanged" Text="Card Payment" Style="z-index: 1;
                    left: 43px; top: 231px; position: absolute" />
                <asp:RadioButton ID="radioCash" runat="server" AutoPostBack="True" GroupName="rado"
                    Text="Cash on deliver" OnCheckedChanged="radioCash_CheckedChanged" Style="z-index: 1;
                    left: 175px; top: 232px; position: absolute" />
          
        <br />
        <asp:Panel ID="PanelCard" runat="server" 
            style="z-index: 1; left: 6px; top: 285px; position: absolute; height: 408px; width: 924px">
        <table style="width: 642px; height: 223px; font-family: 'Comic Sans MS'; font-size: large;
                    margin-left: 0px;" align="center" class="style24" frame="box">
                    <tr>
                        <td class="style30">
                            <asp:Label ID="Label1" runat="server" CssClass="style24" Style="position: relative"
                                Text="Card Number"></asp:Label>
                        </td>
                        <td class="style50">
                            <br />
                            <asp:TextBox ID="txtCardNumber" runat="server" AutoPostBack="True" BackColor="White"
                                CssClass="style37" ForeColor="Black" OnTextChanged="txtCardNumber_TextChanged"
                                Style="position: relative; top: 0px; left: 0px;" 
                                ToolTip="Credit Card no. should be XXXXXXXXXXXXXXXX"></asp:TextBox>
                            &nbsp;<asp:Label ID="lblMsg" runat="server" Style="font-size: small"></asp:Label>
                            <br />
                            
                            <br />
                           
                            <br />
                        </td>
                        <td class="style49">
                            <asp:Label ID="lblStatuscard" runat="server"></asp:Label>
                        </td>
                        <td class="style36">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style38">
                            <asp:Label ID="Label4" runat="server" CssClass="style24" Style="position: relative"
                                Text="Valid From"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style47">
                            <asp:TextBox ID="txtValidFrom" runat="server" BackColor="White" 
                                CssClass="style37" ForeColor="Black"
                                Style="position: relative" ToolTip="In MM/YY format"></asp:TextBox>
                            &nbsp;
                        </td>
                        <td class="style40">
                            <asp:Label ID="Label5" runat="server" CssClass="style24" Style="position: relative"
                                Text="Valid Upto"></asp:Label>
                        </td>
                        <td class="style41">
                            <br />
                           
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtValidUpto"
                                        ErrorMessage="Date Invalid" Style="font-size: small" ValidationExpression="\d\d/\d\d"></asp:RegularExpressionValidator>
                               
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtValidUpto"
                                ErrorMessage="This should not be empty " Style="font-size: small"></asp:RequiredFieldValidator>
                          
                                
                            <asp:TextBox ID="txtValidUpto" runat="server" BackColor="White" 
                                CssClass="style37" ForeColor="Black"
                                Style="position: relative; top: 0px; left: 0px;" ToolTip="In MM/YY format"></asp:TextBox>
                            &nbsp;
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style30">
                            <asp:Label ID="Label6" runat="server" CssClass="style24" Style="position: relative"
                                Text="CCV No."></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style50">
                            <br />
                           
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCCVNo"
                                        ErrorMessage="Enter the CCV no." Style="font-size: small"></asp:RequiredFieldValidator>
                                
                           
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCCVNo"
                                        ErrorMessage="CCV no. Invalid" Style="font-size: small" ValidationExpression="\d\d\d"></asp:RegularExpressionValidator>
                             
                            <asp:TextBox ID="txtCCVNo" runat="server" BackColor="White" CssClass="style37" ForeColor="Black"
                                Style="position: relative; top: 0px; left: 0px;" 
                                ToolTip="CCV no shud be XXX "></asp:TextBox>
                            <br />
                            <br />
                        </td>
                        <td class="style49">
                            <asp:Label ID="Label7" runat="server" CssClass="style24" Style="position: relative"
                                Text="Amount"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style36">
                            <asp:TextBox ID="txtAmount" runat="server" BackColor="White" CssClass="style37" ForeColor="Black"
                                ReadOnly="True" Style="position: relative; top: 0px; left: 0px;"></asp:TextBox>
                        </td>
                    </tr>
                </table>

        </asp:Panel>

      
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Panel ID="PanelCash" runat="server" Height="38px" Visible="False" Style="z-index: 1;
            left: 318px; top: 233px; position: absolute; height: 38px; width: 277px">
            <asp:Label ID="lblAmount0" runat="server" CssClass="style24" Style="position: relative;
                font-size: large;" Text="Amount"></asp:Label>
            &nbsp;<asp:TextBox ID="txtCash" runat="server" BackColor="White" CssClass="style37"
                ForeColor="Black" ReadOnly="True" Style="position: relative; top: 0px; left: 0px;"></asp:TextBox>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="text-align: center; z-index: 1; left: 287px; top: 740px; position: absolute;
            height: 54px; width: 330px;">
            <asp:Button ID="btnPay" runat="server" Text="Place Order" OnClick="btnPay_Click"
                Style="z-index: 1; left: 125px; top: 17px; position: absolute; height: 21px;
                width: 83px;" />
        </div>
    </div>
    </form>
</body>
</html>
