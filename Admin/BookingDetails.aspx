<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_BookingDetails, App_Web_55k4o13f" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menulink" runat="Server">
    <ul>
        <li><a href="#">State/City Management</a>
            <ul>
                <li><a href="State.aspx">State</a></li>
                <li><a href="City.aspx">City</a></li>
            </ul>
        </li>
        <li><a href="#">Car Management</a>
            <ul>
                <li><a href="CarDetail.aspx">Car Details</a></li>
                <li><a href="CarModels.aspx">Car Models</a></li>
                <li><a href="CarTypes.aspx">Car Types</a></li>
                <li><a href="CarFeatures.aspx">Car Feature</a></li>
            </ul>
        </li>
        <li class="active"><a href="BookingDetails.aspx">Booking Management</a></li>
        <li><a href="#">My Account</a>
            <ul>
                <li><a href="AccountDetail.aspx">Account Detail</a></li>
                <li><a href="ChangePassword.aspx">Change Password</a></li>
                <li>
                    <asp:LinkButton ID="lnkbtn_logout" runat="server">Logout</asp:LinkButton></li>
            </ul>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="imageslider" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="panel_grid" runat="server" ScrollBars="Auto">
                <table style="margin: 0px auto">
                <tr><td align="center">Sort By Status
                    <asp:DropDownList ID="DDL_status" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DDL_status_SelectedIndexChanged">
                        <asp:ListItem>All</asp:ListItem>
                        <asp:ListItem Value="1">Booked</asp:ListItem>
                        <asp:ListItem Value="3">Picked</asp:ListItem>
                        <asp:ListItem Value="4">Returned</asp:ListItem>
                        <asp:ListItem Value="2">Canceled</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                     <asp:Label ID="lbl_total_bookings" runat="server" Text=""></asp:Label><br />
                    <asp:TextBox ID="txt_search" placeholder="Search by Bookingid,Firstname,Emailid,Mobileno,Pickupdate" Width="500px" ValidationGroup="s" runat="server"></asp:TextBox>
                    <asp:Button ID="btn_search" ValidationGroup="s" CssClass="btngrid" 
                        runat="server" Text="Search" onclick="btn_search_Click" 
                         /><asp:Button ID="btn_refresh" 
                        CssClass="btngrid" runat="server" Text="Refresh" 
                        onclick="btn_refresh_Click"  />
                    <asp:Label ID="lbl_search" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;<br />
                </td></tr>
                    <tr>
                        <td align="center">
                            <asp:GridView ID="grd_bookingdetails" runat="server" AutoGenerateColumns="False"
                                CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="pkBookingId,Status"
                                OnRowCommand="grd_bookingdetails_RowCommand" 
                                onrowdatabound="grd_bookingdetails_RowDataBound"   >
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Center"
                                    VerticalAlign="Middle" />
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="btn_view" runat="server" Text="View" CommandArgument="<%#((GridViewRow)Container).RowIndex%>"
                                                CommandName="v" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ReservationID">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# bind("pkBookingId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Firstname">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# bind("FName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Lastname">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# bind("LName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="BookingDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# bind("BookingDate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PickupDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# bind("PickupDate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DropDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# bind("DropDate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email-id">
                                        <ItemTemplate>
                                            <asp:Label ID="Label11" runat="server" Text='<%# bind("EmailId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Mobileno">
                                        <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%# bind("MobileNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PickupState">
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# bind("PickUpStateName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PickupCity">
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# bind("PickUpCityName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DropoffState">
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# bind("DropStateName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DropoffCity">
                                        <ItemTemplate>
                                            <asp:Label ID="Label10" runat="server" Text='<%# bind("DropCityName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="grid_lbl_status" runat="server" Text='<%# bind("Status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please Enter Search String" ControlToValidate="txt_search" 
                    Display="None" ValidationGroup="s"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" PopupPosition="Left"
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </asp:ValidatorCalloutExtender>
            </asp:Panel>
            <asp:Panel ID="panel_detail" runat="server">
                <div id="bookingdetail">
                    <table cellspacing="10">
                        <tr>
                            <td colspan="4" align="center" style="font-weight: bolder">
                                <hr />
                                Customer Detail
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
                            <td>
                                Car Plateno:
                            </td>
                            <td>
                                <asp:Label ID="lbl_car_platno" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                Car Model:
                            </td>
                            <td>
                                <asp:Label ID="lbl_car_model" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr><td>Status:</td><td colspan="3">
                            <asp:Label ID="lbl_status" runat="server" Text=""></asp:Label></td></tr>
                        <tr><td colspan="4"><hr />Update Status:
                            <asp:CheckBox ID="chk_picked" Text="Pick" runat="server" />
                            <asp:CheckBox ID="chk_returned" Text="Return" runat="server" />
                            <asp:LinkButton ID="link_update_status" runat="server" 
                                onclick="link_update_status_Click">Update</asp:LinkButton>
                             <asp:LinkButton ID="link_Save_status" runat="server" 
                                onclick="link_Save_status_Click">Save</asp:LinkButton>
                              <asp:LinkButton ID="link_cancel_status" runat="server" 
                                onclick="link_cancel_status_Click">cancel</asp:LinkButton>
                        </td></tr>
                        <tr>
                         <td colspan="4">
                              Update Dropoff Date:&nbsp;
                         
                                <asp:Label ID="lbl_updated_ddate" runat="server" Text=""></asp:Label>
                                 <asp:TextBox ID="txt_update_date"  runat="server" Width="100px" 
                                  AutoPostBack="True" ontextchanged="txt_update_date_TextChanged"></asp:TextBox> 
                                <asp:LinkButton ID="link_update_ddate" runat="server" 
                                    onclick="link_update_ddate_Click">Update</asp:LinkButton>
                                <asp:LinkButton ID="link_ddate_save" runat="server" ValidationGroup="date"
                                  onclick="link_ddate_save_Click">Save</asp:LinkButton>
                                <asp:LinkButton ID="link_date_cancel" runat="server" 
                                  onclick="link_date_cancel_Click">Cancel</asp:LinkButton>
                             <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
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
                        <tr><td colspan="4"><hr />Updated Total Rent:<asp:Label ID="lbl_updated_rent" runat="server" Text=""></asp:Label>
                        <br /> Extra Payable Amount:<asp:Label ID="lbl_charge" runat="server" Text=""></asp:Label><hr /></td></tr>
                        <tr>    
                            <td colspan="2" align="center">
                      
                                <asp:Button ID="btn_bill" CssClass="btnall" runat="server" Text="Generate Bill" 
                                    onclick="btn_bill_Click" /></td>
                                 <td colspan="2" align="center">
                
                                <asp:Button ID="btn_cancel" CssClass="btnall" runat="server" Text="Cancel" 
                                         onclick="btn_cancel_Click" /></td>
                        </tr>
                        <tr><td colspan="4" align="center">
                            <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label></td></tr>
                    </table>
                </div>
            </asp:Panel>
            <asp:CalendarExtender ID="cal_update_date" runat="server" TargetControlID="txt_update_date" Format="dd-MM-yyyy" >
            </asp:CalendarExtender>
            <asp:RequiredFieldValidator ID="RVDtxtdropdate" runat="server" ValidationGroup="date"
                ErrorMessage="Please Select Date" ControlToValidate="txt_update_date" 
                Display="None"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RVDtxtdropdate_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RVDtxtdropdate">
            </asp:ValidatorCalloutExtender>
            <asp:HiddenField ID="hdf_rent" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="tips" runat="Server">
</asp:Content>
