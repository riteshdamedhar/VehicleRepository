<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_Bill, App_Web_ht02vgh3" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta http-equiv="X-UA-Compatible" content="IE=9"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menulink" Runat="Server">
<br />
<br />
<br />
<br /><br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="imageslider" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <CR:CrystalReportViewer ID="CR_bill" runat="server" AutoDataBind="true" 
    ToolPanelView="None" />
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="tips" Runat="Server">
</asp:Content>

