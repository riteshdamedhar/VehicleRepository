<%@ page title="" language="C#" masterpagefile="~/User/UserMasterPage.master" autoeventwireup="true" inherits="User_Failed, App_Web_p5mdulnd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="menulink" Runat="Server">
<ul>
                    <li><a href="Search.aspx">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="MyBooking.aspx">My Booking</a></li>
                    <li><a href="ContactUs.aspx">Contact</a></li>
                </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageslider" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br /><br /><br /><br /><br />
   <center> <asp:Label ID="Label1" runat="server"  ForeColor="Red" Font-Bold="true" Font-Size="Large" Text="Transaction process is failed"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="tips" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footerdiv" Runat="Server">
</asp:Content>