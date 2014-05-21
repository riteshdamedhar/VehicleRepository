<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_CarDetail, App_Web_i3bg5qpx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageslider" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="menulink" runat="Server">
    <ul>
        <li><a href="#">State/City Management</a>
            <ul>
                <li><a href="State.aspx">State</a></li>
                <li><a href="City.aspx">City</a></li>
            </ul>
        </li>
        <li class="active"><a href="#">Car Management</a>
            <ul>
                <li class="active"><a href="CarDetail.aspx">Car Details</a></li>
                <li><a href="CarModels.aspx">Car Models</a></li>
                <li><a href="CarTypes.aspx">Car Types</a></li>
                <li><a href="CarFeatures.aspx">Car Features</a></li>
            </ul>
        </li>
        <li><a href="BookingDetails.aspx">Booking Management</a></li>
        <li><a href="#">My Account</a>
            <ul>
                <li><a href="AccountDetail.aspx">Account Detail</a></li>
                <li><a href="ChangePassword.aspx">Change Password</a></li>
                <li>
                    <asp:LinkButton ID="lnkb_logout" runat="server" OnClick="lnkb_logout_Click">Logout</asp:LinkButton></li>
            </ul>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto">
        <table cellspacing="20px" width="100%">
            <tr>
                <td align="center">
                    <asp:Label ID="lbl_total_cars" runat="server" Text=""></asp:Label><br />
                    <asp:TextBox ID="txt_search" placeholder="Search by PlateNumber,ModelName,Cartype" Width="400px" ValidationGroup="s" runat="server"></asp:TextBox>
                    <asp:Button ID="btn_search" ValidationGroup="s" CssClass="btngrid" runat="server" Text="Search" 
                        onclick="btn_search_Click" /><asp:Button ID="btn_refresh" 
                        CssClass="btngrid" runat="server" Text="Refresh" onclick="btn_refresh_Click" />
                    <asp:Label ID="lbl_search" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;<br />
                    <asp:RadioButtonList ID="rbtnListType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtnListType_SelectedIndexChanged"
                        RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">UndeletedList</asp:ListItem>
                        <asp:ListItem Value="1">DeletedList</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grd_car" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" ShowFooter="True" 
                        DataKeyNames="pkCarId,pkCityId,pkModelId,pkCarTypeId" 
                        OnRowCommand="grd_car_RowCommand" >
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Center" VerticalAlign="Middle"
                           />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chk" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PlateNo.">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# bind("PlateNumber") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City">
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# bind("CityName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CarModel">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# bind("ModelName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CarType">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# bind("CarType") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FuelType">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# bind("FuelType") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Color">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# bind("Color") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Rent">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# bind("Rent") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="KMDone">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# bind("KilometerDone") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MileageCity">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# bind("MileageCity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MileageHighway">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# bind("MileageHighway") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FuelTankCapacity">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# bind("FuelTankCapacity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# bind("ImageUrl") %>' Height="70px"
                                        Width="70px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Features">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# bind("Features") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btn_edit" runat="server" Text="Edit" CommandArgument="<%#((GridViewRow)Container).RowIndex%>"
                                        CommandName="e" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Size="Medium"
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btn_new" CssClass="btngrid" runat="server" OnClick="btn_new_Click"
                        Text="New" />
                    <asp:Button ID="btn_delete" CssClass="btngrid" runat="server" OnClick="btn_delete_Click"
                        Text="Delete" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:HiddenField ID="hfOpType" runat="server" />
                    <br />
                    <asp:Label ID="lbl_msg1" runat="server" ForeColor="#CC0000"></asp:Label>
                    <asp:HiddenField ID="hfPkId" runat="server" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="s" runat="server" 
                        ErrorMessage="Please Enter Search String" ControlToValidate="txt_search" 
                        Display="None"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" PopupPosition="Left" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
        </table>
        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <div id="cardetail">
            <center>
                <table cellspacing="20">
                    <tr>
                        <td>
                            City
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_city" CssClass="ddl" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Car Type
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_cartype" CssClass="ddl" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Car Model
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_model" CssClass="ddl" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Color
                        </td>
                        <td>
                            <asp:TextBox ID="txt_color" ValidationGroup="val" MaxLength="20" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PlateNumber
                        </td>
                        <td>
                            <asp:TextBox ID="txt_platenumber" style="text-transform:uppercase" ValidationGroup="val" MaxLength="20" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Fuel Type
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rbtnlist_fuel" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Petrol</asp:ListItem>
                                <asp:ListItem>Diesel</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mileage City
                        </td>
                        <td>
                            <asp:TextBox ID="txt_mlg_city" ValidationGroup="val" MaxLength="20" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mileage Highway
                        </td>
                        <td>
                            <asp:TextBox ID="txt_mlg_highway" ValidationGroup="val" MaxLength="10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            KilometerDone
                        </td>
                        <td>
                            <asp:TextBox ID="txt_kmdone" ValidationGroup="val" MaxLength="10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Fueltank Capacity
                        </td>
                        <td>
                            <asp:TextBox ID="txt_fuelcapacity" ValidationGroup="val" MaxLength="10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Rent
                        </td>
                        <td>
                            <asp:TextBox ID="txt_rent" ValidationGroup="val" MaxLength="10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Features
                        </td>
                        <td>
                            <asp:CheckBoxList ID="chk_features" runat="server">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Image
                        </td>
                        <td>
                            <asp:FileUpload ID="img_uploader" CssClass="upload" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="btn_save"  CssClass="btnall" runat="server" Text="Add" OnClick="btn_save_Click" />&nbsp;<asp:Button
                                ID="btn_cancel" ValidationGroup="c" CssClass="btnall" runat="server" Text="Cancel" OnClick="btn_cancel_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lbl_msg" runat="server" ForeColor="#CC0000"></asp:Label>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
           <asp:RequiredFieldValidator ID="RVD_ddlcity" runat="server" InitialValue="0"
            ErrorMessage="Please Select City" ControlToValidate="ddl_city" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="a_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_ddlcity">
        </asp:ValidatorCalloutExtender>
     <asp:RequiredFieldValidator ID="RVD_ddlType" runat="server" InitialValue="0"
            ErrorMessage="Please Select Car Type" ControlToValidate="ddl_cartype" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_ddlType_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_ddlType">
        </asp:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RVD_ddlModel" runat="server" InitialValue="0"
            ErrorMessage="Please Select Car Model" ControlToValidate="ddl_model" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_ddlModel_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_ddlModel">
        </asp:ValidatorCalloutExtender>
     
       
        <asp:RequiredFieldValidator ID="RVD_color" runat="server" 
            ErrorMessage="Please enter color" ControlToValidate="txt_color" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_color_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_color">
        </asp:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RVD_plateno" runat="server" 
            ErrorMessage="Please Enter Plateno" ControlToValidate="txt_platenumber" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_plateno_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_plateno">
        </asp:ValidatorCalloutExtender>
          
        <asp:RequiredFieldValidator ID="RVD_milcity" runat="server" 
            ErrorMessage="Please Enter Mileage" ControlToValidate="txt_mlg_city" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_milcity_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_milcity">
        </asp:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RVD_milhighway" runat="server" 
            ErrorMessage="Please Enter Mileage" ControlToValidate="txt_mlg_highway" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_milhighway_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_milhighway">
        </asp:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RVD_kmdone" runat="server" 
            ErrorMessage="Please Enter Kilometerdone" ControlToValidate="txt_kmdone" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_kmdone_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_kmdone">
        </asp:ValidatorCalloutExtender>
         <asp:RequiredFieldValidator ID="RVD_Fuelcapacity" runat="server" 
            ErrorMessage="Please Enter Fuel Capacity" ControlToValidate="txt_fuelcapacity" 
            Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_Fuelcapacity_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_Fuelcapacity">
        </asp:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RVD_rent" runat="server" 
            ErrorMessage="Please Enter Rent" ControlToValidate="txt_rent" Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RVD_rent_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RVD_rent">
        </asp:ValidatorCalloutExtender>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Please Enter Rent in Digit" ControlToValidate="txt_rent" 
            Display="None" ValidationExpression="^\d*$"></asp:RegularExpressionValidator>
        <asp:ValidatorCalloutExtender ID="RegularExpressionValidator2_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RegularExpressionValidator2">
        </asp:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Choose Image" ControlToValidate="img_uploader" Display="None"></asp:RequiredFieldValidator>
        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
        </asp:ValidatorCalloutExtender>
     
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="tips" runat="Server">
</asp:Content>
