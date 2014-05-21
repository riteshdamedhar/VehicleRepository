<%@ page title="" language="C#" masterpagefile="~/User/UserMasterPage.master" autoeventwireup="true" inherits="User_Search, App_Web_p5mdulnd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="menulink" runat="Server">
<ul>
                    <li class="active"><a href="Search.aspx">Home</a></li>
                    <li><a href="AboutUs.aspx">About</a></li>
                    <li><a href="MyBooking.aspx">My Booking</a></li>
                    <li><a href="ContactUs.aspx">Contact</a></li>
                </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageslider" runat="server">
    <asp:Panel ID="SliderPanel" runat="server">
        <div class="image-slider">
            <!-- Slideshow 1 -->
            <ul class="rslides" id="slider1">
                <li>
                    <img src="../images/b3.png" alt="" />
                   
                </li>
                <li>
                    <img src="../images/b1.png" alt="" />
                   
                </li>
                <li>
                    <img src="../images/b2.png" alt="" />
                  
                </li>
            </ul>
     
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="SearchPanel" runat="server">
            <div style="height:350px;">
                <div id="divsearch">
                    <center>
                        <asp:Panel ID="Panel1" runat="server">
                            <table cellspacing="20">
                                <tr>
                                    <td>
                                        State
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="p_ddl_state" CssClass="ddlsearch" runat="server" OnSelectedIndexChanged="p_ddl_state_SelectedIndexChanged"
                                            AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        City
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="p_ddl_city" CssClass="ddlsearch" runat="server" AutoPostBack="True"
                                            OnSelectedIndexChanged="p_ddl_city_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <asp:CheckBox ID="chk_rlocation" Checked="true" runat="server" AutoPostBack="True"
                                OnCheckedChanged="chk_rlocation_CheckedChanged" />Return Car To Same Location
                        </asp:Panel>
                        <!-- dropoff code-->
                        <asp:Panel ID="Panel2" runat="server">
                            <table cellspacing="17">
                                <tr>
                                    <td>
                                        Dropoff
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        State
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="r_ddl_state" CssClass="ddlsearch" runat="server" AutoPostBack="True"
                                            OnSelectedIndexChanged="r_ddl_state_SelectedIndexChanged">
                                            <asp:ListItem Selected="True">--Select State--</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        City
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="r_ddl_city" CssClass="ddlsearch" runat="server" OnSelectedIndexChanged="r_ddl_city_SelectedIndexChanged"
                                            AutoPostBack="True">
                                            <asp:ListItem Selected="True">--Select City--</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" TargetControlID="Panel2"
                            CollapseControlID="chk_rlocation" ExpandControlID="chk_rlocation" Collapsed="true"
                            CollapsedSize="0" runat="server">
                        </asp:CollapsiblePanelExtender>
                        <asp:Panel ID="Panel3" runat="server">
                            <table cellspacing="20">
                                <tr>
                                    <td>
                                        Pick Up Date:<br />
                                        <asp:TextBox ID="txt_pickup" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        Time:
                                        <br />
                                        <asp:DropDownList ID="ddl_pick_time" runat="server">
                                            <asp:ListItem>00:00</asp:ListItem>
                                            <asp:ListItem>00:30</asp:ListItem>
                                            <asp:ListItem>01:00</asp:ListItem>
                                            <asp:ListItem>01:30</asp:ListItem>
                                            <asp:ListItem>02:00</asp:ListItem>
                                            <asp:ListItem>02:30</asp:ListItem>
                                            <asp:ListItem>03:00</asp:ListItem>
                                            <asp:ListItem Value="07">03:30</asp:ListItem>
                                            <asp:ListItem>04:00</asp:ListItem>
                                            <asp:ListItem Selected="True">04:30</asp:ListItem>
                                            <asp:ListItem>05:00</asp:ListItem>
                                            <asp:ListItem>05:30</asp:ListItem>
                                            <asp:ListItem>06:00</asp:ListItem>
                                            <asp:ListItem>06:30</asp:ListItem>
                                            <asp:ListItem>07:00</asp:ListItem>
                                            <asp:ListItem>07:30</asp:ListItem>
                                            <asp:ListItem>08:00</asp:ListItem>
                                            <asp:ListItem>08:30</asp:ListItem>
                                            <asp:ListItem>09:00</asp:ListItem>
                                            <asp:ListItem>09:30</asp:ListItem>
                                            <asp:ListItem>10:00</asp:ListItem>
                                            <asp:ListItem>10:30</asp:ListItem>
                                            <asp:ListItem>11:00</asp:ListItem>
                                            <asp:ListItem>11:30</asp:ListItem>
                                            <asp:ListItem>12:00</asp:ListItem>
                                            <asp:ListItem>12:30</asp:ListItem>
                                            <asp:ListItem>13:00</asp:ListItem>
                                            <asp:ListItem>13:30</asp:ListItem>
                                            <asp:ListItem>14:00</asp:ListItem>
                                            <asp:ListItem>14:30</asp:ListItem>
                                            <asp:ListItem>15:00</asp:ListItem>
                                            <asp:ListItem>15:30</asp:ListItem>
                                            <asp:ListItem>16:00</asp:ListItem>
                                            <asp:ListItem>16:30</asp:ListItem>
                                            <asp:ListItem>17:00</asp:ListItem>
                                            <asp:ListItem>17:30</asp:ListItem>
                                            <asp:ListItem>18:00</asp:ListItem>
                                            <asp:ListItem>18:30</asp:ListItem>
                                            <asp:ListItem>19:00</asp:ListItem>
                                            <asp:ListItem>19:30</asp:ListItem>
                                            <asp:ListItem>20:00</asp:ListItem>
                                            <asp:ListItem>20:30</asp:ListItem>
                                            <asp:ListItem>21:00</asp:ListItem>
                                            <asp:ListItem>21:30</asp:ListItem>
                                            <asp:ListItem>22:00</asp:ListItem>
                                            <asp:ListItem>22:30</asp:ListItem>
                                            <asp:ListItem>23:00</asp:ListItem>
                                            <asp:ListItem>23:30</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Drop Off Date:<br />
                                        <asp:TextBox ID="txt_dropoff" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        Time:
                                        <br />
                                        <asp:DropDownList ID="ddl_drop_time" runat="server">
                                            <asp:ListItem>00:00</asp:ListItem>
                                            <asp:ListItem>00:30</asp:ListItem>
                                            <asp:ListItem>01:00</asp:ListItem>
                                            <asp:ListItem>01:30</asp:ListItem>
                                            <asp:ListItem>02:00</asp:ListItem>
                                            <asp:ListItem>02:30</asp:ListItem>
                                            <asp:ListItem>03:00</asp:ListItem>
                                            <asp:ListItem Value="07">03:30</asp:ListItem>
                                            <asp:ListItem>04:00</asp:ListItem>
                                            <asp:ListItem Selected="True">04:30</asp:ListItem>
                                            <asp:ListItem>05:00</asp:ListItem>
                                            <asp:ListItem>05:30</asp:ListItem>
                                            <asp:ListItem>06:00</asp:ListItem>
                                            <asp:ListItem>06:30</asp:ListItem>
                                            <asp:ListItem>07:00</asp:ListItem>
                                            <asp:ListItem>07:30</asp:ListItem>
                                            <asp:ListItem>08:00</asp:ListItem>
                                            <asp:ListItem>08:30</asp:ListItem>
                                            <asp:ListItem>09:00</asp:ListItem>
                                            <asp:ListItem>09:30</asp:ListItem>
                                            <asp:ListItem>10:00</asp:ListItem>
                                            <asp:ListItem>10:30</asp:ListItem>
                                            <asp:ListItem>11:00</asp:ListItem>
                                            <asp:ListItem>11:30</asp:ListItem>
                                            <asp:ListItem>12:00</asp:ListItem>
                                            <asp:ListItem>12:30</asp:ListItem>
                                            <asp:ListItem>13:00</asp:ListItem>
                                            <asp:ListItem>13:30</asp:ListItem>
                                            <asp:ListItem>14:00</asp:ListItem>
                                            <asp:ListItem>14:30</asp:ListItem>
                                            <asp:ListItem>15:00</asp:ListItem>
                                            <asp:ListItem>15:30</asp:ListItem>
                                            <asp:ListItem>16:00</asp:ListItem>
                                            <asp:ListItem>16:30</asp:ListItem>
                                            <asp:ListItem>17:00</asp:ListItem>
                                            <asp:ListItem>17:30</asp:ListItem>
                                            <asp:ListItem>18:00</asp:ListItem>
                                            <asp:ListItem>18:30</asp:ListItem>
                                            <asp:ListItem>19:00</asp:ListItem>
                                            <asp:ListItem>19:30</asp:ListItem>
                                            <asp:ListItem>20:00</asp:ListItem>
                                            <asp:ListItem>20:30</asp:ListItem>
                                            <asp:ListItem>21:00</asp:ListItem>
                                            <asp:ListItem>21:30</asp:ListItem>
                                            <asp:ListItem>22:00</asp:ListItem>
                                            <asp:ListItem>22:30</asp:ListItem>
                                            <asp:ListItem>23:00</asp:ListItem>
                                            <asp:ListItem>23:30</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="btn_search" CssClass="btnall" runat="server" Text="Search" OnClick="btn_search_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="Lbl_msg" ForeColor="Green" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_pickup"
                            Format="dd-MM-yyyy">
                        </asp:CalendarExtender>
                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_dropoff"
                            Format="dd-MM-yyyy">
                        </asp:CalendarExtender>
                    </center>
                    <asp:RequiredFieldValidator ID="RVDddlstate" runat="server" ErrorMessage="Please Select State"
                        ControlToValidate="p_ddl_state" InitialValue="0" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RVDddlstate_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="RVDddlstate">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="RVDddlcity" runat="server" ErrorMessage="Please Select City"
                        Display="None" InitialValue="0" ControlToValidate="p_ddl_city"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RVDddlcity_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="RVDddlcity">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="RVDdropddlcity" runat="server" ErrorMessage="Please select city"
                        Display="None" InitialValue="0" ControlToValidate="r_ddl_city"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RVDdropddlcity_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="RVDdropddlcity">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="RVDpickdate" runat="server" ErrorMessage="Please Select Pickup date"
                        Display="None" ControlToValidate="txt_pickup"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RVDpickdate_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="RVDpickdate">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="RVDdropdate" runat="server" ErrorMessage="Please Select Dropoff date"
                        ControlToValidate="txt_dropoff" Display="None"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RVDdropdate_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="RVDdropdate">
                    </asp:ValidatorCalloutExtender>
                    <%--<asp:CompareValidator ID="CMPvalidator" runat="server" ErrorMessage="Please Select Valid Date"
                        ControlToCompare="txt_pickup" ControlToValidate="txt_dropoff" Display="None"
                        Operator="GreaterThanEqual"></asp:CompareValidator>
                    <asp:ValidatorCalloutExtender ID="CMPvalidator_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="CMPvalidator">
                    </asp:ValidatorCalloutExtender>--%>
             </div>
          <div style="position:relative;margin-left:45%;top:-350px;font-size:16pt;height:220px;width:650px;">
                <table cellspacing="10px" >
                <tr><td>
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/images/feature-icon.png" /></td><td>Lowest Price guarantee</td></tr>
                
                  <tr><td>
                      <asp:Image ID="Image8" runat="server" ImageUrl="~/images/feature-icon.png" /></td><td>24x7 customer support centers</td></tr>
                   <tr><td>
                       <asp:Image ID="Image9" runat="server" ImageUrl="~/images/feature-icon.png" /></td><td>Transparent pricing structure</td></tr>
                    <tr><td>
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/images/feature-icon.png" /></td><td>Reservation or cancel your booking online quickly and easily</td></tr>
                </table></div>
     </div>   
            </asp:Panel>
            <br />
            <asp:Panel ID="DisplayCarsPanel" runat="server" Visible="False">
                <div id="pagemenu" style="width: 80%; left: 9%; position: absolute;">
                    <%-- <table>
            <tr>
           
                <td align="center">--%><center>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label></center>
                    <%--    </td>
            </tr>
        </table>--%>
                </div>
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <%--<div id="left" style="width: 20%; left: 4%; position: relative;">
                    <center>
                        <div class="innersearch">
                            <table>
                                <tr>
                                    <td colspan="2">
                                        <b>Search For Car Hire</b>
                                        <asp:TextBox ID="txt_search" ValidationGroup="s" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" ValidationGroup="s" CssClass="btngrid" runat="server" Text="Search"   />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pick up
                                    </td>
                                    <td>
                                        change
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </center>
                </div>--%>
                <div id="detail" style="width: 70%; margin:0px auto; position: relative;">
                    <asp:GridView ID="grd_cars" CssClass="grdsearchresult" BorderStyle="None" GridLines="None" runat="server" HorizontalAlign="Center"
                        AutoGenerateColumns="False" CellSpacing="5" Width="100%" OnRowCommand="grd_cars_RowCommand"
                        DataKeyNames="ImageUrl,FuelType,ModelName,CarType,Rent,pkCarId">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <table width="100%" class="tblshowcar">
                                        <tr>
                                            <td rowspan="3" align="center" valign="middle">
                                                <asp:Image ID="Image1234" runat="server" Height="120px" Width="120px" ImageUrl='<%# bind("ImageUrl") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_model" runat="server" Text='<%# bind("ModelName") %>'></asp:Label><br />
                                                Class:<asp:Label ID="lbl_type" runat="server" Text='<%# bind("CarType") %>'></asp:Label>
                                            </td>
                                            <td>
                                                Rent per day:<br />
                                                INR:<asp:Label ID="lbl_rent" runat="server" Text='<%# bind("Rent") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Fuel Type:<asp:Label ID="lbl_fuel" runat="server" Text='<%# bind("FuelType") %>'></asp:Label>&nbsp;
                                                Mileage:<asp:Label ID="lbl_mileage" runat="server" Text='<%# bind("MileageCity") %>'></asp:Label>&nbsp;
                                                FuelTank Capacity:<asp:Label ID="lbl_capacity" runat="server" Text='<%# bind("FuelTankCapacity") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btn_booknow" CssClass="btnall" runat="server" Text="Book Now" CommandArgument="<%#((GridViewRow)Container).RowIndex%>" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Features:<asp:Label ID="lbl_feature" runat="server" Text='<%# bind("Features") %>'></asp:Label>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <ItemStyle Width="100%" />
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle HorizontalAlign="Justify" Width="100%" />
                    </asp:GridView>
                </div>
            </asp:Panel>
            <br />
            <asp:Panel ID="CustomerDetailPanel" runat="server" Visible="False">
                <div id="custdetail_table">
                    <table cellpadding="10" style="margin: 0px auto">
                        <tr>
                            <td rowspan="3">
                                <asp:Image ID="img_detail" Width="150px" Height="150px" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lblmodel_detail" runat="server" Text=""></asp:Label><br />
                                Class:
                                <asp:Label ID="lblcartype_detail" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                Rent per day:
                                <asp:Label ID="lblrent_detail" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Fuel Type:<asp:Label ID="lblfueltype_detail" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                Total Days:<asp:Label ID="lbltotaldays_detail" runat="server" Text=""></asp:Label><br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Total Rent:<br />
                                <asp:Label ID="lbltotalrent_detail" runat="server" Text=""></asp:Label>&nbsp;INR
                                &nbsp;&nbsp;
                                <asp:Label ID="lbltotalusd_detail" runat="server" Text=""></asp:Label>&nbsp;USD
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:HiddenField ID="HiddenfieldTotaldays" runat="server" />
                <asp:HiddenField ID="HiddenfieldCarid" runat="server" />
                <asp:HiddenField ID="HiddenfieldTotalRent" runat="server" />
                <asp:HiddenField ID="HiddenFieldCarModel" runat="server" />
                <asp:HiddenField ID="HiddenFieldRentUSD" runat="server" />
                <br />
                <br />
                <div id="customerdetail">
                    <center>
                        <h1>
                            Driver Details</h1>
                        <table cellspacing="20">
                            <%--  <tr>
                <th colspan="2">
                  <b>  Driver Details</b>
                </th>
            </tr>--%>
                            <tr>
                                <td>
                                    First Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_firstname" MaxLength="20" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Last Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_lastname" MaxLength="20" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email-id
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_emailid" MaxLength="50" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Confirm Email-id
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_confirm_emailid" MaxLength="50" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Mobile Number
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_phnumber" MaxLength="10" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    State
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_state_custdetail" MaxLength="20" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    City
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_city_custdetail" MaxLength="20" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Address
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_custaddress" MaxLength="200" TextMode="MultiLine" Rows="5" Width="200px" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:Button ID="btn_custdetail" CssClass="btnall" runat="server" Text="Book Now"
                                        OnClick="btn_custdetail_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lbl_bookingerror_msg" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RVD_fname_custdetail" runat="server" 
                            ErrorMessage="Please Enter Firstname" ControlToValidate="txt_firstname" 
                            Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_fname_custdetail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_fname_custdetail">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RVD_lastname_custdetail" runat="server" 
                            ErrorMessage="Please Enter Lastname" ControlToValidate="txt_lastname" 
                            Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_lastname_custdetail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_lastname_custdetail">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RVD_emailid_custdetail" runat="server" 
                            ErrorMessage="Please Enter email-id" ControlToValidate="txt_emailid" 
                            Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_emailid_custdetail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_emailid_custdetail">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RVD_reemailid_custdetail" runat="server" 
                            ErrorMessage="Please Reenter email-id" ControlToValidate="txt_confirm_emailid" 
                            Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_reemailid_custdetail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_reemailid_custdetail">
                        </asp:ValidatorCalloutExtender>
                        <asp:CompareValidator ID="CMP_emailid_custdetail" runat="server" 
                            ErrorMessage="Email-id does not match" ControlToCompare="txt_emailid" 
                            ControlToValidate="txt_confirm_emailid" Display="None"></asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="CMP_emailid_custdetail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="CMP_emailid_custdetail">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RVD_phno_custdetail" runat="server" 
                            ErrorMessage="Please Enter Phone number" ControlToValidate="txt_phnumber" 
                            Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_phno_custdetail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_phno_custdetail">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RVD_state_custdetail" runat="server" 
                            ErrorMessage="Please Enter State name" ControlToValidate="txt_state_custdetail" 
                            Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_state_custdetail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_state_custdetail">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RVD_city_detail" runat="server" 
                            ErrorMessage="Please Enter City name" ControlToValidate="txt_city_custdetail" 
                            Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_city_detail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_city_detail">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RVD_address_custdetail" runat="server" 
                            ErrorMessage="Please Enter Address" ControlToValidate="txt_custaddress" 
                            Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_address_custdetail_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_address_custdetail">
                        </asp:ValidatorCalloutExtender>
                        <asp:RegularExpressionValidator ID="RVD_Mobile_No" runat="server" 
                            ErrorMessage="Please enter 10 digit number" ControlToValidate="txt_phnumber" 
                            Display="None" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="RVD_Mobile_No_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RVD_Mobile_No">
                        </asp:ValidatorCalloutExtender>
                    </center>
                </div>
            </asp:Panel>
            <asp:Panel ID="BookingIdPanel" runat="server" Visible="false">
                <div id="bookingreferencepanel">
                    <table>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbl_notification" runat="server" ForeColor="Red" 
                                    Text="Reference Number Send to Your Email ID For Future Use..."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                Your Booking Reference is:
                                <asp:Label ID="lbl_bookingid" runat="server" ForeColor="#006600"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btn_go" runat="server" CssClass="btnall" 
                                    Text="Go for Payment" onclick="btn_go_Click" />
                            </td>
                        </tr>
                    </table>
                    <asp:HiddenField ID="HiddenField_bookingid" runat="server" />
                </div>
            </asp:Panel>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btn_search" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="tips" runat="Server">
    <asp:Panel ID="TipsPanel" runat="server">
        <img src="../images/5-Tips-for-Safe-Driving1.jpg" alt="image" height="200px" width="1000px" />
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footerdiv" runat="Server">
    <asp:Panel ID="FooterPanel" runat="server">

<div class="footer-grids">
                    <div class="footer-grid">
                        <h3>
                            Follow Us</h3>
                        <p>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/01_twitter.png" />&nbsp;&nbsp;&nbsp;<asp:Image 
                                ID="Image2" runat="server" ImageUrl="~/images/02_facebook.png" />&nbsp;&nbsp;&nbsp;<asp:Image
                                    ID="Image3" runat="server" ImageUrl="~/images/14_google+.png" />&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/03_youtube.png" />&nbsp;&nbsp;&nbsp;<asp:Image
                                ID="Image5" runat="server" ImageUrl="~/images/21_blogger.png" />&nbsp;&nbsp;&nbsp;<asp:Image
                                    ID="Image6" runat="server" ImageUrl="~/images/22_skype.png" />
                           </p>
                    </div>
                  <div class="footer-grid" style="margin-left:60px">
                        <h3>
                            Locations</h3>
                        <ul>
                            <li>
                                <asp:LinkButton ID="lnk1" ValidationGroup="map" runat="server" onclick="lnk1_Click">Gujarat</asp:LinkButton></li>
                          <li>  <asp:LinkButton ID="lnk2" ValidationGroup="map" runat="server" 
                                  onclick="lnk2_Click">Goa</asp:LinkButton></li>
                         <li>   <asp:LinkButton ID="lnk3" ValidationGroup="map" runat="server" 
                                 onclick="lnk3_Click">Maharashtra</asp:LinkButton></li>
                            <%--<li><a href="#">Mauris at tellus</a></li>
                            <li><a href="#">Donec ut lectus</a></li>
                            <li><a href="#">vitae interdum</a></li>--%>
                        </ul>
                    </div>
                   <%--   <div class="footer-grid">
                        <h3>
                            USEFUL INFO</h3>
                        <ul>
                            <li><a href="#">Hendrerit quam</a></li>
                            <li><a href="#">Amet consectetur </a></li>
                            <li><a href="#">Iquam hendrerit</a></li>
                            <li><a href="#">Donec ut lectus </a></li>
                        </ul>
                    </div>--%>
                    <div class="footer-grid footer-lastgrid">
                        <h3>
                            CONTACT US</h3>
                        <p>
                            rentnride car rental</p>
                        <div class="footer-grid-address">
                            <p>
                                Tel.XXX XXX XXXX</p>
                            
                            <p>
                                Email:<a class="email-link" href="#">rentnride@Demo.com</a></p>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                    </asp:Panel>
</asp:Content>