<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_AdminLogin, App_Web_qofs0uji" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageslider" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="menulink" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="adminlogin">
                <center>
                    <table cellspacing="20">
                        <tr>
                            <td>
                                Email-Id
                            </td>
                            <td>
                                <asp:TextBox ID="txt_al_emailid" MaxLength="50" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password
                            </td>
                            <td>
                                <asp:TextBox ID="txt_al_password" MaxLength="20" TextMode="Password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:HyperLink ID="lnk_al_forgotpassword" NavigateUrl=""
                                    runat="server" ForeColor="#012231">Forgotten Your Password?</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btn_al_login" CssClass="btn" runat="server" Text="Login" OnClick="btn_al_login_Click"
                                    ValidationGroup="l" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email-id"
                        ControlToValidate="txt_al_emailid" Display="None" ValidationGroup="l"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password"
                        ControlToValidate="txt_al_password" Display="None" ValidationGroup="l"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender"
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Email-id"
                        ControlToValidate="txt_al_emailid" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="l"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="RegularExpressionValidator3_ValidatorCalloutExtender"
                        runat="server" Enabled="True" TargetControlID="RegularExpressionValidator3">
                    </asp:ValidatorCalloutExtender>
                </center>
            </div>
            <asp:Panel ID="panelfgpassword" CssClass="popup" runat="server">
                <center>
                    <table cellspacing="20">
                        <tr>
                            <td colspan="2" align="left">
                                Forgot your password?<br />
                                <br />
                                Enter your email address and we will<br /> send your password number to this address.
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email-id
                            </td>
                            <td>
                                <asp:TextBox ID="txt_fgemail" MaxLength="50" runat="server">   </asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btn_submit" CssClass="btnall" runat="server" Text="Submit" ValidationGroup="m" 
                                    onclick="btn_submit_Click" />&nbsp;&nbsp;&nbsp;<asp:Button
                                    ID="btn_fgcancel" CssClass="btnall" runat="server" Text="Cancel" />
                            </td>
                        </tr>
                        <tr><td colspan="2" align="center">
                            <asp:Label ID="lbl_fgmsg" runat="server" ForeColor="Red"></asp:Label></td></tr>
                    </table>
                </center>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Email-id"
                    ControlToValidate="txt_fgemail" Display="None" ValidationGroup="m"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender"
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Email-id"
                    ControlToValidate="txt_fgemail" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ValidationGroup="m"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender"
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                </asp:ValidatorCalloutExtender>
                <asp:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="lnk_al_forgotpassword"
                    BackgroundCssClass="modalbackground" CancelControlID="btn_fgcancel" PopupControlID="panelfgpassword"
                    runat="server">
                </asp:ModalPopupExtender>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="tips" runat="Server">
</asp:Content>
