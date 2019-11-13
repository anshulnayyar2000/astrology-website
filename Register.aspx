<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <div class="textdanger">
        <p class="text-danger">
        &nbsp;</p>
    <p class="text-danger">
        &nbsp;</p>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <p class="text-danger">
        &nbsp;</p>

    </div>
    
    <div class="rowform">
        <h4 style="font-size:30px;">Create a new account</h4>
        <br />
        <asp:ValidationSummary runat="server" CssClass="text-danger" ForeColor="Red" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
            <div class="col-md-10" style="width: 762px">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Height="40px" Width="229px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The user name field is required." ForeColor="Red" />
                <br />
                Name<br />
                <asp:TextBox runat="server" ID="UserName0" CssClass="form-control" Height="40px" Width="229px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserName" ErrorMessage="The name field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                Email&nbsp;&nbsp;&nbsp;
                <br />
                <asp:TextBox runat="server" ID="email" TextMode="Email" CssClass="form-control" Height="37px" ValidateRequestMode="Enabled" Width="229px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="the email id is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="the format must be in proper way" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10" style="width: 632px">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" Height="32px" Width="229px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." ForeColor="Red" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10" style="width: 714px">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" Height="34px" Width="229px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." ForeColor="Red" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." ForeColor="Red" />
                <br />
                <br />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10" style="width: 151px">
                <asp:Button ID="Button2" runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" Width="154px" />
                
            </div>
        </div>
    </div>
</asp:Content>

