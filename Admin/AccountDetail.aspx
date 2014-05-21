<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_AccountDetail, App_Web_qofs0uji" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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
        <li><a href="#">Car Management</a>
            <ul>
                <li><a href="CarDetail.aspx">Car Details</a></li>
                <li><a href="CarModels.aspx">Car Models</a></li>
                <li><a href="CarTypes.aspx">Car Types</a></li>
                <li class="active"><a href="CarFeatures.aspx">Car Features</a></li>
            </ul>
        </li>
        <li><a href="BookingDetails.aspx">Booking Management</a></li>
        <li class="active"><a href="#">My Account</a>
            <ul>
                <li class="active"><a href="AccountDetail.aspx">Account Detail</a></li>
                <li><a href="ChangePassword.aspx">Change Password</a></li>
                <li><asp:LinkButton ID="lnkbtn_logout" runat="server" 
            onclick="lnkbtn_logout_Click" >Logout</asp:LinkButton></li>
            </ul>
        </li>
 
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div id="accountdetail">
        <center>
            <table cellspacing="20">
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
                        Mobile no.
                    </td>
                    <td>
                        <asp:TextBox ID="txt_mobileno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btn_edit" CssClass="btnall" runat="server" Text="Edit" 
                            onclick="btn_edit_Click" />
                        <asp:Button ID="btn_update" CssClass="btnall" runat="server" Text="Update" 
                            onclick="btn_update_Click" ValidationGroup="ad" />
                        <asp:Button ID="btn_cancel" CssClass="btnall" runat="server" Text="Cancel" onclick="btn_cancel_Click" 
                           />
                    </td>
                    <tr>
                                <td colspan="2" align="center">
                                    <asp:Label ID="lbl_msg" runat="server" ForeColor="#CC0000"></asp:Label>
                                      <asp:HiddenField ID="hfOpType" runat="server" />
                                </td>
                            </tr>
                </tr>
            </table>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Please Enter FirstName" Display="None" ValidationGroup="ad" 
                ControlToValidate="txt_firstname"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
            </asp:ValidatorCalloutExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Please Enter LastName" Display="None" ValidationGroup="ad" 
                ControlToValidate="txt_lastname"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
            </asp:ValidatorCalloutExtender>
          <br />  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Please Enter Email-id" Display="None" ValidationGroup="ad" 
                ControlToValidate="txt_emailid"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
            </asp:ValidatorCalloutExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Please Enter Mobileno." Display="None" ValidationGroup="ad" 
                ControlToValidate="txt_mobileno"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
            </asp:ValidatorCalloutExtender>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Please enter 10 digit number" ControlToValidate="txt_mobileno" 
                Display="None" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
            <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
            </asp:ValidatorCalloutExtender>
        </center>
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="tips" runat="Server">
</asp:Content>
