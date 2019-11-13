<%@ Page Title="Log in" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <link rel="stylesheet" href="resources/css/loginstyle.css">
    
    <style type="text/css">
        .form-control {}
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <h2 style="color:#301d1d; color:white; font-size:25px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; LOGIN </h2>
        <p>&nbsp;</p>

    <div class="rowform">
        <div class="col-md-8">
            <section id="section-form clearfix" style="font-size: 20px">
                <div class="contact-form clearfix">
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>

                    <div class="form-group1">
                        
                            <br />
                            <br />
                            &nbsp;USERNAME<br />
                        
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Height="28px" Width="236px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />
                            <br />
                            <br />
&nbsp;PASSWORD
                        </div>
                    </div>
                    <div class="form-group2">
                        
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" Height="28px" Width="236px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" 
                                CssClass="text-danger" ErrorMessage="The password field is required." />
                            <br />
                        <br />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                &nbsp;<asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <p>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" Width="68px" />
                </p>
                <p style="color:white;">
                    &nbsp;
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
                &nbsp;if you don't have a local account.
                    </p>
                <p>
                    &nbsp;</p>
            </section>
        </div>

       <!--
           <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
        </div>
        --> 
    </div>
    </form>
</body>
</html>



