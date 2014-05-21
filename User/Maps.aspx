<%@ page title="" language="C#" masterpagefile="~/User/UserMasterPage.master" autoeventwireup="true" inherits="User_Maps, App_Web_1yvi4500" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menulink" Runat="Server">
<ul>
                    <li><a href="Search.aspx">Home</a></li>
                    <li><a href="AboutUs.aspx">About</a></li>
                    <li><a href="MyBooking.aspx">My Booking</a></li>
                    <li><a href="ContactUs.aspx">Contact</a></li>
                </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="imageslider" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
    var markers = [
    <asp:Repeater ID="rptMarkers" runat="server">
    <ItemTemplate>
             {
                "title": '<%# Eval("City") %>',
                "lat": '<%# Eval("Latitude") %>',
                "lng": '<%# Eval("Longitude") %>',
                "description": '<%# Eval("Description") %>'
            }
    </ItemTemplate>
    <SeparatorTemplate>
        ,
    </SeparatorTemplate>
    </asp:Repeater>
    ];
    </script>
    <script type="text/javascript">

        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
   
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent("<div style='width:250px;height:100px;'><p style='font:bold;font-size:18pt'>rentnride</p><br/>"+data.description+"<div>");
                        infoWindow.open(map, marker);

                    });
                })(marker, data);
            }
        }
    </script>
    <div id="dvMap" style="width: 700px; height: 500px; margin:0px auto;">
    </div>
  
  
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="tips" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footerdiv" Runat="Server">
</asp:Content>

