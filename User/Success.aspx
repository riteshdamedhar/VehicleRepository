<%@ page title="" language="C#" masterpagefile="~/User/UserMasterPage.master" autoeventwireup="true" inherits="User_Success, App_Web_1yvi4500" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="menulink" Runat="Server">
<ul>
                    <li><a href="Search.aspx">Home</a></li>
                    <li><a href="AboutUs.aspx">About</a></li>
                    <li><a href="MyBooking.aspx">My Booking</a></li>
                    <li><a href="ContactUs.aspx">Contact</a></li>
                </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageslider" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <center> <div>
        <table>
        <tr><td>
            <asp:Label ID="lbl_error_msg" runat="server" Text="" Font-Bold="True" ForeColor="Green"></asp:Label></td></tr>
          <tr><td>
              <asp:LinkButton ID="lnl_receipt" runat="server" onclick="lnl_receipt_Click">Click Here to Download Receipt</asp:LinkButton></td></tr>
      
            <CR:CrystalReportViewer ID="CR_Receipt" runat="server" AutoDataBind="true" 
                Visible="False" />
         <%--   <tr>
                <td>
                    Transaction Id:
                </td>
                <td>
                    <asp:Label ID="lbl_tranid" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Status
                </td>
                <td>
                    <asp:Label ID="lbl_status" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Amount:
                </td>
                <td>
                    <asp:Label ID="lbl_amount" runat="server" Text=""></asp:Label>
                </td>
            </tr>
             <tr>
                <td>
                    Booking id:
                </td>
                <td>
                    <asp:Label ID="lbl_bookingid" runat="server" Text=""></asp:Label>
                </td>
            </tr>--%>
        </table>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </div>
    </center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="tips" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footerdiv" Runat="Server">
</asp:Content>