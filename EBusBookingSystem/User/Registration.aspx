<%@ Page Title="Registration" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EBusBookingSystem.User.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center style="background-color: #CCFF99">
    <br />
<table align="center" 
        
        style=" width: 50%; height: 800px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="2" style=" font-size: large; font-weight: bold;">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Registration</h1>
            </td>
        </tr>
        
        
    
        
        <tr>
            <td  align="center">
              <asp:Label ID="lbl_signup_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td align="center" >
                <asp:TextBox ID="txtPersonName" placeholder="Name" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox> 
                
                
            </td>
            
        </tr>
        
        <tr>
            <td  align="center">
               <asp:Label ID="lbl_signup_username1" runat="server" Text="Username"></asp:Label><br />
            </td>
            <td  align="center">
               <asp:TextBox ID="txtUsername" placeholder="Username" runat="server" 
               Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox> 
           
            
            </td>
            
        </tr>
        
        <tr>
            <td  align="center">
                <asp:Label ID="lbl_signup_gender" runat="server" Text="Gender"></asp:Label><br />
            </td>
            <td  align="center">
                <asp:RadioButtonList ID="DropdownlistGender" runat="server">
                
                <asp:ListItem >male</asp:ListItem>
                <asp:ListItem >female</asp:ListItem>
                </asp:RadioButtonList>
                
            </td>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_mobile" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td  align="center">
                <asp:TextBox ID="txtMobile" placeholder="Mobile" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
              
                
            </td>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_email" runat="server" Text="Email"></asp:Label></td>
            <td align="center">
             <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>   
          
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_pass" runat="server" Text="Password"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txtPass" placeholder="Password" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
           
           
            </td>
        </tr>

        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_cpass" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txt_signup_cpass"  placeholder="Confirm Password" runat="server" Height="25px" Width="380px" 
                    BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"  ></asp:TextBox>
                

            </td>
        </tr>

        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txtAddress" placeholder="Address" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
            
        </tr>
        
        <tr>
            <td colspan="2" align="center" 
                style="background-color: #C0C0C0; font-size: large; font-weight: bold;">
                <asp:Button ID="btnsubmit" OnClick="btnsubmit_Click" class="login login-submit" runat="server" 
                Text="Submit"  Font-Bold="True" Font-Size="Large" 
                    Height="40px" Width="224px" BackColor="#00FFCC" />&nbsp&nbsp&nbsp&nbsp
                <a href="Login.aspx">Login</a>
            </td>
        </tr>
</table>
    <br />
</center>




</asp:Content>
