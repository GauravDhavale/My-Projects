<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="UserRegistration.aspx.cs" Inherits="MobileWorld.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 207px;
            color: #333333;
        }
        .style3
        {
            color: Black;
            width: 121px;
            color: #FFFFFF;
        }
        .style4
        {
            text-align: center;
            color: #FEFFFF;
            margin-bottom: 47px;
        }
        .style5
        {
            width: 121px;
            color: #333333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div1" style="display: block; height: 847px; margin-left: 40px; margin-right: 99px;
        z-index: 1; left: 30px; top: 89px; position: absolute; width: 895px;">
        <h1 class="style4" style="color: #000000">
            Registration Page</h1>
        <br />
        &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table width="100%" style="height: 721px; z-index: 1; left: 2px; top: 55px; position: absolute;
            width: 886px;">
            <tr>
                <td align="right" class="style3" style="color: #000000">
                    Name:
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    &nbsp;<asp:UpdatePanel ID="UpdatePanel9" runat="server">
                        <ContentTemplate>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName"
                                ErrorMessage="Name Required"></asp:RequiredFieldValidator></ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" style="color: #000000">
                    Username:
                </td>
                <td style="text-align: justify">
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnCheckAvailability" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            &nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <br />
                            &nbsp;&nbsp;<asp:TextBox ID="txtUserName" runat="server" Width="204px"></asp:TextBox>
                            &nbsp;<asp:UpdatePanel ID="UpdatePanel10" runat="server">
                                <ContentTemplate>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUserName"
                                        ErrorMessage="Username Required" Height="20px" Width="37px"></asp:RequiredFieldValidator>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtUserName" ErrorMessage="Username Required" Height="20px" 
                                    Width="37px"></asp:RequiredFieldValidator>--%>
                            &nbsp;&nbsp;
                            <asp:Button ID="btnCheckAvailability" runat="server" Height="26px" OnClick="btnCheckAvailability_Click"
                                Text="Check Availability" Width="110px" Style="z-index: 1; left: 726px; top: 146px;
                                position: absolute; width: 126px;" />
                            &nbsp;
                            <asp:Label ID="lblCheckUsername" runat="server" ForeColor="Black" Style="z-index: 1;
                                left: 561px; top: 148px; position: absolute; width: 128px"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" style="color: #000000">
                    Password:
                </td>
                <td>
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txtPassword" runat="server" Width="204px" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required"
                                ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" style="color: #000000">
                    ConfirmPassword:
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Width="204px" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                                ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords should match"></asp:CompareValidator></ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" style="color: #000000">
                    Address:
                </td>
                <td>
                    &nbsp&nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txtAddress" runat="server" Width="204px" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                        <ContentTemplate>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress"
                                ErrorMessage="Address Required"></asp:RequiredFieldValidator></ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" style="color: #000000">
                    Email:
                </td>
                <td>
                    &nbsp&nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txtEmail" runat="server" Width="204px"></asp:TextBox>
                    &nbsp;<asp:UpdatePanel ID="UpdatePanel6" runat="server">
                        <ContentTemplate>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="A Valid Email Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Provide an Email"></asp:RequiredFieldValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" style="color: #000000">
                    Contact No:&nbsp;
                </td>
                <td>
                    &nbsp&nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txtContactNo" runat="server" Width="204px" ToolTip="Eg. 9821532859"
                        OnTextChanged="txtContactNo_TextChanged" 
                       ></asp:TextBox>
                    &nbsp;
                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="lblContactNoStatus" runat="server" Style="z-index: 1; left: 652px;
                                top: 553px; position: absolute" ForeColor="Black" 
                                AssociatedControlID="txtContactNo"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="ContactNo. Required"
                                ControlToValidate="txtContactNo"></asp:RequiredFieldValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                        <ContentTemplate>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter a Valid Number"
                                ControlToValidate="txtContactNo" ValidationExpression="^([7-9]{1})([0-9]{9})$"
                                Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" style="color: #000000">
                    Type:
                </td>
                <td>
                    &nbsp&nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:DropDownList ID="DropDownListType" runat="server" Width="204px">
                        <asp:ListItem>Buyer</asp:ListItem>
                        <asp:ListItem>Seller</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="buttonSubmit" runat="server" Text="Submit" Width="131px" OnClick="buttonSubmit_Click"
                                Style="z-index: 1; left: 160px; top: 741px; position: absolute; height: 33px;
                                right: 595px" />
                            <%--<asp:ImageButton ID="buttonSubmit" runat="server" ImageUrl="~/Image/Submit.jpg" 
                       Width="131px" onclick="ImageButton1_Click" />--%></ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td align="center" class="style1">
                    <asp:Button ID="buttonCancel" runat="server" Height="30px" Text="Cancel" Width="131px"
                        OnClick="buttonCancel_Click" />
                </td>
            </tr>
        </table>
        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
            <ContentTemplate>
                <asp:Label ID="lblRegistration" runat="server" Style="z-index: 1; left: 373px; top: 803px;
                    position: absolute; width: 368px"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
