<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="EBusBookingSystem.Booking.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

      <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Cab"/>
    <meta name="author" content="Cab"/>
    <meta name="keywords" content="Cab"/>

    <title>Booking</title>
     <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all"/>
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet"/>

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all"/>

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all"/>

</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Bus booking</h2>
                    <form method="POST">
                        <div class="input-group">
                        <asp:TextBox ID="txtName" class="input--style-2" placeholder="Name" runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <asp:TextBox ID="txtDate" TextMode="Date"  placeholder="date" runat="server"></asp:TextBox>
                                    
                                   <%-- <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>--%>
                                </div>
                            </div>
                             <div class="col-2">
                                <div class="input-group">
                                    <asp:TextBox ID="txtDays" class="input--style-2"   placeholder="No Of Days" runat="server"></asp:TextBox>
                                    
                                    
                                </div>
                            </div>
                             <div class="col-2">
                                <div class="input-group">
                                    <asp:TextBox ID="txtMobile"  class="input--style-2" placeholder="Mobile" runat="server"></asp:TextBox>
                                    
                                   
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <asp:DropDownList ID="RadioButtonListGender" runat="server">
                                            <asp:ListItem>Gender</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                               <asp:DropDownList name="class" ID="DropDownListCategory" runat="server">
                                     <asp:ListItem>Select Bus</asp:ListItem>
                                    <asp:ListItem>Seater</asp:ListItem>
                                   <asp:ListItem>Luxury</asp:ListItem>
                                   <asp:ListItem>VIP</asp:ListItem>

                               </asp:DropDownList>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                   <asp:TextBox ID="txtAdress" class="input--style-2" placeholder="Address"  runat="server"></asp:TextBox>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="p-t-30">
                        <asp:Button ID="btnBookNow" OnClick="btnBookNow_Click" class="btn btn--radius btn--green" runat="server" Text="Confirm"  />
                           &nbsp&nbsp&nbsp
                           
                        <asp:Button ID="BtnLogout" OnClick="BtnLogout_Click" BackColor="Red" foreColor="White" runat="server" Text="Logout"  />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js" type="text/javascript"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js" type="text/javascript"></script>
    <script src="vendor/datepicker/moment.min.js" type="text/javascript"></script>
    <script src="vendor/datepicker/daterangepicker.js" type="text/javascript"></script>

    <!-- Main JS-->
    <script src="js/global.js" type="text/javascript"></script>

        </div>
    </form>
</body>
</html>
