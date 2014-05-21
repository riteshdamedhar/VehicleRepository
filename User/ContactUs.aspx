<%@ page title="" language="C#" masterpagefile="~/User/UserMasterPage.master" autoeventwireup="true" inherits="User_ContactUs, App_Web_1v55ur1d" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menulink" Runat="Server">
<ul>
                    <li><a href="Search.aspx">Home</a></li>
                    <li><a href="AboutUs.aspx">About</a></li>
                    <li><a href="MyBooking.aspx">My Booking</a></li>
                    <li class="active"><a href="ContactUs.aspx">Contact</a></li>
                </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="imageslider" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<div class="col span_2_of_3">
<div class="contact-form">
				  	<h3>Contact Us</h3>
					  
					    	<div>
						    	<span><label>NAME</label></span>
						    	<span>
    <asp:TextBox ID="txt_Name" class="textbox" runat="server"></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Subject</label></span>
						    	<span>
        <asp:TextBox ID="txt_subject" class="textbox" runat="server"></asp:TextBox></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span>
        <asp:TextBox ID="txt_Email" class="textbox" runat="server"></asp:TextBox></span>
						    </div>
						    <div>
						     	<span><label>MOBILE</label></span>
						    	<span>
            <asp:TextBox ID="txt_Phone" class="textbox" runat="server"></asp:TextBox></span>
						    </div>
						    <div>
						    	<span><label>Message</label></span>
						    	<span>
                <asp:TextBox ID="txt_Msg" class="textbox" TextMode="MultiLine" runat="server"></asp:TextBox></span>
						    </div>
						   <div>
						   		<span>
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" onclick="btn_submit_Click" /></span>
						  </div>
				<div>
						 <center>   	<span>
                        <asp:Label ID="lbl_msg"  runat="server" ForeColor="Green" Font-Bold="true" Text=""></asp:Label></span>
                          </center>      </div>

				    </div>
    <asp:RequiredFieldValidator ID="RVD_name" runat="server" 
        ErrorMessage="Please Enter Name" ControlToValidate="txt_Name" Display="None"></asp:RequiredFieldValidator>
    <asp:ValidatorCalloutExtender ID="RVD_name_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="RVD_name">
    </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RVD_subject" runat="server" 
        ErrorMessage="Please Enter Subject" ControlToValidate="txt_subject" 
        Display="None"></asp:RequiredFieldValidator>
    <asp:ValidatorCalloutExtender ID="RVD_subject_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="RVD_subject">
    </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RVD_emailid" runat="server" 
        ErrorMessage="Please Enter Emailid" ControlToValidate="txt_Email" 
        Display="None"></asp:RequiredFieldValidator>
    <asp:ValidatorCalloutExtender ID="RVD_emailid_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="RVD_emailid">
    </asp:ValidatorCalloutExtender>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Please Enter Valid Emailid" ControlToValidate="txt_Email" 
        Display="None" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
    </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RVD_mobileno" runat="server" 
        ErrorMessage="Please Enter Mobileno." ControlToValidate="txt_Phone" 
        Display="None"></asp:RequiredFieldValidator>
    <asp:ValidatorCalloutExtender ID="RVD_mobileno_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="RVD_mobileno">
    </asp:ValidatorCalloutExtender>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ErrorMessage="Please Enter 10 Digit Number" ControlToValidate="txt_Phone" 
        Display="None" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
    <asp:ValidatorCalloutExtender ID="RegularExpressionValidator2_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="RegularExpressionValidator2">
    </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RVD_msg" runat="server" 
        ErrorMessage="Please Enter Message" ControlToValidate="txt_Msg" Display="None"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RVD_msg_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="RVD_msg">
    </asp:ValidatorCalloutExtender>
                    </div>
                    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="tips" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footerdiv" Runat="Server">
</asp:Content>

