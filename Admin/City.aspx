<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_City, App_Web_qofs0uji" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menulink" runat="Server">
    <ul>
        <li class="active"><a href="#">State/City Management</a>
            <ul>
                <li><a href="State.aspx">State</a></li>
                <li class="active"><a href="City.aspx">City</a></li>
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
        <li><a href="BookingDetails.aspx">Booking Management</a></li>
        <li><a href="#">My Account</a>
            <ul>
                <li><a href="AccountDetail.aspx">Account Detail</a></li>
                <li><a href="ChangePassword.aspx">Change Password</a></li>
                  <li>
            <asp:LinkButton ID="lnkbtn_logout" runat="server" OnClick="lnkbtn_logout_Click">Logout</asp:LinkButton></li>
            </ul>
        </li>
      
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="imageslider" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel1" runat="server">
                <table cellspacing="20" width="100%">
                    <tr>
                        <td align="center">
                            <asp:RadioButtonList ID="rbtnListType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtnListType_SelectedIndexChanged"
                                RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="0">UndeletedList</asp:ListItem>
                                <asp:ListItem Value="1">DeletedList</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:GridView ID="grd_city" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                DataKeyNames="pkStateId,pkCityId" ForeColor="#333333" GridLines="None" OnRowCommand="grd_city_RowCommand"
                                HorizontalAlign="Center" Width="30%" ShowFooter="True">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Center"
                                    VerticalAlign="Middle" />
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chk" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="City Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# bind("CityName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="State Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# bind("StateName") %>'></asp:Label>
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
                            <asp:Label ID="lbl_msg1" runat="server" ForeColor="#CC0000"></asp:Label>
                            <asp:HiddenField ID="hfOpState" runat="server" />
                            <asp:HiddenField ID="hfPkId" runat="server" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <div id="city">
                    <center>
                        <table cellspacing="20">
                            <tr>
                                <td>
                                    State
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddl_state" CssClass="ddlstate" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    City
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_city" MaxLength="20" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="btn_save" CssClass="btnall" runat="server" Text="Save" OnClick="btn_save_Click"
                                        ValidationGroup="ct" />
                                    <asp:Button ID="btn_cancel" CssClass="btnall" runat="server" Text="Cancel" OnClick="btn_cancel_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Label ID="lbl_msg" runat="server" ForeColor="#CC0000"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter City Name"
                            ControlToValidate="txt_city" Display="None" ValidationGroup="ct"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                    </center>
                </div>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="tips" runat="Server">
</asp:Content>
