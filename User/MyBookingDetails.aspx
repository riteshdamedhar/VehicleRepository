<%@ page title="" language="C#" masterpagefile="~/User/UserMasterPage.master" autoeventwireup="true" inherits="User_MyBookingDetails, App_Web_p5mdulnd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageslider" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="menulink" runat="Server">
<ul>
                    <li>
                        <asp:LinkButton ID="lnk_btn_logout" runat="server" 
                            onclick="lnk_btn_logout_Click">Logout</asp:LinkButton></li>
                    
                </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:Panel ID="panel_msg" runat="server">
    <div id="cancelbookingmsg">
    <table style="margin:0px auto">
    <tr>
    <td align="center">
        <asp:Label ID="lbl_cancel_msg" ForeColor="Red" runat="server" Text=""></asp:Label></td>
    </tr>
    </table>
    </div>
    </asp:Panel>
    <asp:Panel ID="panel_from" runat="server">
    
    <div id="mybookingdetails">
        <table cellspacing="5">
            <tr>
                <td colspan="4" align="center" style="font-weight: bolder">
                    <hr />
                  Personal Detail
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    Name:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_cname" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    State:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_cstate" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    City:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_ccity" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Email-Id:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_cemail" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Contact no:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_ccontact" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_caddress" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center" style="font-weight: bolder">
                    <hr />
                    Booking Detail
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    Booking ID:
                </td>
                <td>
                    <asp:Label ID="lbl_bookingid" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    Booking Date:
                </td>
                <td>
                    <asp:Label ID="lbl_bookingdate" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Pickup Date:
                </td>
                <td>
                    <asp:Label ID="lbl_pickdate" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    Pickup Time:
                </td>
                <td>
                    <asp:Label ID="lbl_picktime" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Dropoff Date:
                </td>
                <td>
                    <asp:Label ID="lbl_dropdate" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    Dropoff Time:
                </td>
                <td>
                    <asp:Label ID="lbl_droptime" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Pickup State:
                </td>
                <td>
                    <asp:Label ID="lbl_pick_state" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    Pickup City:
                </td>
                <td>
                    <asp:Label ID="lbl_pick_city" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Dropoff State:
                </td>
                <td>
                    <asp:Label ID="lbl_drop_state" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    Dropoff City:
                </td>
                <td>
                    <asp:Label ID="lbl_drop_city" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
               <%-- <td>
                    Car Plateno:
                </td>
                <td>
                    <asp:Label ID="lbl_car_platno" runat="server" Text=""></asp:Label>
                </td>--%>
                <td>
                    Car Model:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_car_model" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center" style="font-weight: bolder">
                    <hr />
                    Payment Detail
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    Transcation Id:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_tranid" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    TotalRent(INR):
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_total_inr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <%-- <tr>
                            <td>
                                TotalRent(USD):
                            </td>
                            <td colspan="3">
                                <asp:Label ID="lbl_total_usd" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>
            <tr>
                <td>
                    Payment Status:
                </td>
                <td colspan="3">
                    <asp:Label ID="lbl_payStatus" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <asp:Button ID="btn_cancel_booking" CssClass="btnall" runat="server" 
                        Text="Cancel Booking" onclick="btn_cancel_booking_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </asp:Panel>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="tips" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footerdiv" runat="Server">
</asp:Content>
