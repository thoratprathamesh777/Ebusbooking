<%@ Page Title="Contact" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EBusBookingSystem.User.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
    <br />
    <br />
    <Br />
    <br />
    <br />
    <br />

    
	<div class="map-w3ls">
				 <div class="wthree_title_agile">
						        <h3> Contact <span>Us</span>  </h3>
				</div>
						 <p class="sub_para">It’s time to drive</p>
		<div class="contact-agile" id="contact">
		<div class="contact-middle">
					<h4>Say Hello</h4>
					<table>
					<div class="form-agileinfo">
					<div class="input-w3ls">
						<p>Your Name</p>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
						
					</div>
					<div class="input-w3ls">
						<p>Your Email</p>
						<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
						
					</div>
						<div class="input-w3ls">
						<p>Subject</p>
						<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
						
					</div>
					</div>
					<div class="form-agileits-w3layouts">
					<p>Your Message</p>
						<asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server"></asp:TextBox>
						
					</div >
					<div class="input-w3ls">
						<asp:Button runat="server" ID="btnSend" OnClick="btnSend_Clcik" Text="SEND MESSAGE" BackColor="Red" ForeColor="White"></asp:Button>

					</div>
						
					<div class="clearfix"></div>
					</table>
				</div>
				<div class="contact-left">
					<h6>INDIA</h6>
					<p>+91 9998887776</p>
					<p>Gujrat, INDIA</p>
					<p><a href="#">busbooking@gmail.com</a></p>
					<h6>Opening Hours</h6>
					<p>Monday-Friday</p>
						<span>7.00AM-10.00PM</span>
					​<p>Saturday-Sunday</p>
						​<span>7.00AM-8.00PM</span>
				</div>
				
		</div>
	

		</div>

    <br />
    <br />
    <br />
    <br />
</center>


</asp:Content>
