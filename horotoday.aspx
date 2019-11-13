<%@ Page Language="C#" AutoEventWireup="true" CodeFile="horotoday.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="resources/css/img/horotoday.css">
    <link rel="stylesheet" href="vendors/css/normalize.css">

   
</head>
<body>
    <header>
        <nav>
            <div class="rows">

              <a href="Default.aspx"> <img src="resources/css/img/logo-new.png" class="logo" alt="Astro Nova logo"  ></a>
              <ul class="main-nav" >
                <li class="navg"> <a href="#aboutus">About us</a> </li>
                <li class="navg"> <a href="horotoday.aspx">Horoscope</a></li>
                <li class="navg"> <a href="#contact">Contact</a> </li>
                <li class="navg"> <a href="Register.aspx">Sign Up/</a> </li>
                <li class="navg"> <a href="Login.aspx"> login</a> </li>
              </ul>
            </div>

        </nav>
    </header>
      
    <form id="form1" runat="server">
    <div class="horo-select">
        <br />
        <br />
        <br />
        <br />
        
        
&nbsp;<h2>CHOOSE YOUR SIGN</h2>&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="sign " DataValueField="sign " Height="31px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="171px" BackColor="#ffffff" Font-Bold="True" Font-Size="Large">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="CHECK YOUR HOROSCOPE" Width="240px" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Amit %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <h3>SIGN LORD</h3>
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
      
        <br />
        <br />
        <div class="horo-middle"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">TODAY</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">WEEKLY</asp:LinkButton>
         <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">MONTHLY</asp:LinkButton>
        <br />
        <br />
        
        <br />
          </div> 
        <div class="horo-main">
       <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="."  Width="400px" Style="Font-Size:25px"></asp:Label>
            <hr style="height: 0px" />
        <br />
           
        <asp:TextBox ID="TextBox1" runat="server" Columns="5" height="400px" Rows="25" TextMode="MultiLine" Width="1200px" BorderColor="White" OnTextChanged="TextBox1_TextChanged" Font-Italic="True" Font-Size="X-Large" ReadOnly="True" BorderStyle="None" style="opacity;"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </div>
        <br />
        
        
        <br />
       
        
       <br />
            
           <footer >
         <div id="contact">
     <div class="row">
       <div class="col span-1-of-2">
         <ul class="end11">
           <li ><a href="horotoday.aspx">About us</a></li>
            <li ><a href="#blog">reviews</a></li>
             <li ><a href="Contact.aspx">Contact us</a></li>
               <li ><a href="#android">android app</a></li>
         </ul>
       </div>
       <div class="col span-1-of-2">
         <ul class="end12">
           <li class="fun"><a href="#"><i class="ion-social-facebook"></i></a></li>
           <li class="fun"><a href="#"><i class="ion-social-twitter"></i></a></li>
           <li class="fun"><a href="#"><i class="ion-social-instagram"></i></a></li>
           <li class="fun"><a href="#"><i class="ion-social-googleplus"></i></a></li>
         </ul>
       </div>

     </div>
     <div class="scopy">
       <p>Copyright &copy; 2019 by Astronova. All rights reserved.</p>
     </div>


     </div>
    </footer> 
    </form>
</body>
</html>
