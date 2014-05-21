<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_ChangePassword, App_Web_qofs0uji" %>

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
                <li><a href="AccountDetail.aspx">Account Detail</a></li>
                <li class="active"><a href="ChangePassword.aspx">Change Password</a></li>
                <li><asp:LinkButton ID="lnkbtn_logout" runat="server" 
            onclick="lnkbtn_logout_Click" >Logout</asp:LinkButton></li>
            </ul>
        </li>
    
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="changepass">
                <center>
                    <table cellspacing="20">
                        <tr>
                            <td>
                                Old Password
                            </td>
                            <td>
                                <asp:TextBox ID="txt_oldpassword" MaxLength="10" TextMode="Password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                New Password
                            </td>
                            <td>
                                <asp:TextBox ID="txt_newpassword" MaxLength="10" TextMode="Password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Confirm Password
                            </td>
                            <td>
                                <asp:TextBox ID="txt_confirmpassword" MaxLength="10" TextMode="Password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btn_save" CssClass="btnall" runat="server" Text="Save" 
                                    OnClick="btn_save_Click" ValidationGroup="cpass" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                   
                </center>
            </div> <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Password does not match" ControlToCompare="txt_newpassword" 
                        ControlToValidate="txt_confirmpassword" Display="None" 
                ValidationGroup="cpass"></asp:CompareValidator>
                    <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="CompareValidator1">
                    </asp:ValidatorCalloutExtender>
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ErrorMessage="Same password enter another password" 
                ControlToCompare="txt_oldpassword" ControlToValidate="txt_newpassword" 
                Display="None" Operator="NotEqual" ValidationGroup="cpass"></asp:CompareValidator>
                    <asp:ValidatorCalloutExtender ID="CompareValidator2_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="CompareValidator2">
            </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please Enter Old Password" ControlToValidate="txt_oldpassword" 
                        Display="None" ValidationGroup="cpass"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage=" Please Enter New Password" ControlToValidate="txt_newpassword" 
                        Display="None" ValidationGroup="cpass"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Please reenter new password" 
                        ControlToValidate="txt_confirmpassword" Display="None" 
                ValidationGroup="cpass"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                    </asp:ValidatorCalloutExtender>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Password must be 8-10 characters long with at least one numeric,</br> one alphabet and one special character." ControlToValidate="txt_newpassword" 
                Display="None" 
                ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$"></asp:RegularExpressionValidator>
            <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
            </asp:ValidatorCalloutExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="tips" runat="Server">
</asp:Content>
