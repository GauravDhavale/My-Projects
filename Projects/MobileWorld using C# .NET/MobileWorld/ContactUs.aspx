<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="ContactUs.aspx.cs" Inherits="MobileWorld.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .style1
        {
            font-size: x-large;
            position: absolute;
            left: 18px;
            top: 31px;
        }
        .style2
        {
            font-family: Calibri;
        }
        .style3
        {
            color: #FF9900;
        }
        .style4
        {
            color: #FF9900;
            font-size: x-large;
        }
        .style6
        {
            color: #CC3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="width: 435px; height: 537px; z-index: 1; left: 93px; top: 119px; position: absolute;"> 
  
         <br />
&nbsp;<br />
         <br />
         <span class="style2">
        <span style="padding-left:10px; z-index: 1; left: 25px; top: 90px; position: absolute; margin-right: 26px;" 
             class="style3">Name:</span></span> 
        <asp:TextBox ID="textName" runat="server" 
             style="z-index: 1; left: 130px; top: 89px; position: absolute"></asp:TextBox><br /> 
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style2"><span class="style3" 
             style="z-index: 1; left: 29px; top: 123px; position: absolute; width: 71px">
         EMail:</span></span> <br /> 
         <span class="style2"> 
        <span style="padding-left:5px; z-index: 1; left: 24px; top: 159px; position: absolute; width: 71px;" 
             class="style3">Mobile No:</span></span> 
        <asp:TextBox ID="textContact" runat="server" 
             style="z-index: 1; left: 128px; top: 160px; position: absolute"></asp:TextBox>
         <span class="style2">
         <span style="padding-left:26px; z-index: 1; left: -8px; top: 210px; position: absolute; width: 85px;" 
             class="style3">Address:</span></span> 
        <asp:TextBox ID="textAddress" runat="server" TextMode="MultiLine" 
             style="z-index: 1; left: 126px; top: 205px; position: absolute"></asp:TextBox><br /> 
         <span class="style2"> 
        <span style="padding-left:15px; z-index: 1; left: 5px; top: 276px; position: absolute; width: 84px;" 
             class="style3">Feedback: </span> 
         </span><br />
         <br />
         <br />
         
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
        <asp:TextBox ID="textComment" runat="server" TextMode="MultiLine" Height="164px" 
             Width="281px" 
             style="z-index: 1; left: 126px; top: 261px; position: absolute"></asp:TextBox>
         <br />
         
         <br />
&nbsp;<span class="style1" style="z-index: 1; color: #FF9900">FEED BACK </span><asp:TextBox 
             ID="textMail" runat="server" 
             style="z-index: 1; left: 129px; top: 123px; position: absolute"></asp:TextBox>
        <asp:Button ID="BtnSubmitFeddBack" runat="server" Text="Submit" onclick="BtnSubmitFeddBack_Click" 
             style="z-index: 1; left: 183px; top: 451px; position: absolute; width: 93px;" 
             BackColor="#FFFFCC" Font-Names="Calibri" ForeColor="#FF9900"/> 
         <%--  
         </td> 
    </tr> 
    </table> --%>
      
    </div>
    <div style="width: 306px; z-index: 1; left: 630px; top: 129px; position: absolute; height: 532px">
        <br />
        <span class="style4">GET IN TOUCH<br />
        </span>
    <br />
        <span class="style3">For further inquiry please contact:</span><br />
        <em><span class="style6">Mr. Bharath Pillai</span><br 
            class="style6" />
        <span class="style6">Team Lead- Mobile World</span></em><br />
        <br />
        <span class="style3">Email:</span><br />
        <span class="style6">
        <a ><em>pillai_bharath@mobileworld.com</em></a></span><br />
        <br />
        <span class="style3">Contact Number:</span><br />
        <span class="style6"><em>9876543210</em></span><br />
        <br />
        <span class="style3">Address:</span><br />
        <span class="style6"><em>L&amp;T Infotech</em></span><em><br class="style6" />
        </em><span class="style6"><em>Plot No.10, Mount Poonamallee Road, Manapakkam, 
        Chennai, Tamil Nadu 600089</em></span><br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
    </div>
     
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
