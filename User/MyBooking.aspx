<%@ page title="" language="C#" masterpagefile="~/User/UserMasterPage.master" autoeventwireup="true" inherits="User_MyBooking, App_Web_p5mdulnd" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageslider" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="menulink" runat="Server">
<ul>
                    <li><a href="Search.aspx">Home</a></li>
                    <li><a href="AboutUs.aspx">About</a></li>
                    <li  class="active"><a href="MyBooking.aspx">My Booking</a></li>
                    <li><a href="ContactUs.aspx">Contact</a></li>
                </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div id="mybooking">
        <center>
            <table cellspacing="20">
                <tr>
                    <td>
                        <asp:TextBox ID="txt_mb_email" placeholder="Email address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_mb_bookingid" placeholder="Reservation number" 
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr><td align="center">
                    <asp:Button ID="btn_go" CssClass="btnall" runat="server" Text="Go" 
                        onclick="btn_go_Click" /></td></tr>
                        <tr><td align="center">
                            <asp:Label ID="lbl_msg" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label></td></tr>
            </table>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Please Enter Email-id" ControlToValidate="txt_mb_email" 
                Display="None"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
            </asp:ValidatorCalloutExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Please Enter BookingID" ControlToValidate="txt_mb_bookingid" 
                Display="None"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
            </asp:ValidatorCalloutExtender>
        </center>
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footerdiv" runat="Server">
</asp:Content>
