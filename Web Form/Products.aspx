<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Web_Form.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    Please buy our products<br />
    <asp:Label ID="labelLastName" runat="server" AssociatedControlID="txtLastName" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" CssClass="redText" EnableClientScript="False" ErrorMessage="The last name cannot be empty"></asp:RequiredFieldValidator>
    <br />
    Age
    <asp:TextBox ID="txtBoxAge" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtBoxAge" CssClass="redText" EnableClientScript="False" ErrorMessage="RangeValidatorAge" MaximumValue="120" MinimumValue="17" Type="Integer">The age must be between 17 and 120</asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAgeEmpty" runat="server" ControlToValidate="txtBoxAge" CssClass="redText" EnableClientScript="False" ErrorMessage="RequiredFieldValidatorAgeEmpty">The age field can&#39;t be empty</asp:RequiredFieldValidator>
    <br />
    <br />
    Age of driver license<asp:TextBox ID="txtBoxAgeDriverLicense" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidatorAgeDriverLicense" runat="server" ControlToCompare="txtBoxAge" ControlToValidate="txtBoxAgeDriverLicense" CssClass="redText" ErrorMessage="CompareValidator" Operator="LessThan" Type="Integer">The driver licenses is greater than your Age</asp:CompareValidator>
    <br />
    <%
            // if the submit button was clicked
            if (Request.Form[PREFIX_WEB_FORM + "buttonSubmit"] != null)
            {
                Response.Write("Welcome " + Request.Form[PREFIX_WEB_FORM + "txtLastName"]);
                Response.Write("<br>You bought a " + Request.Form[PREFIX_WEB_FORM + "DropDownProducts"] +" from " + Request.Form[PREFIX_WEB_FORM + "txtBoxYear"]);
        }

        // if the form was submitted write: You bought a Ferrari


        %>

    Reservation date
    <asp:TextBox ID="txtBoxReservationDate" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtBoxReservationDate" CssClass="redText" EnableClientScript="False" ErrorMessage="The date is not in the valid range" MaximumValue="2024/12/31" MinimumValue="2024/01/01" Type="Date"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAgeEmpty0" runat="server" ControlToValidate="txtBoxReservationDate" CssClass="redText" EnableClientScript="False" ErrorMessage="RequiredFieldValidatorAgeEmpty">The age field cannot be empty</asp:RequiredFieldValidator>
    <br />
    <br />
    City:
    <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxCity" CssClass="redText" ErrorMessage="The city cannot be empty"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorCity" runat="server" CssClass="redText" ErrorMessage="The city must contain between 1 and 5 characters" ControlToValidate="TextBoxCity" ValidationExpression="[a-zA-Z]{1,5}"></asp:RegularExpressionValidator>
    <br />
    <br />
    <br />

    <br />
    Product:<asp:DropDownList ID="DropDownProducts" runat="server">
        <asp:ListItem>Ferrari</asp:ListItem>
        <asp:ListItem>Mercedes</asp:ListItem>
        <asp:ListItem>Honda</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" AssociatedControlID="txtBoxYear" Text="Year"></asp:Label>
&nbsp;<%


        //temporary div to post the form(Press ENTER)
        // MANUAL INPUT, Do not do that
        //Response.Write("<input name = 'model'>");
        //Response.Write(productList(list)); // Manual Input
        %><asp:TextBox ID="txtBoxYear" runat="server" ></asp:TextBox>
    <br />
    <asp:Button ID="buttonSubmit" runat="server" Text="Submit" />
    <br />
    <br />
</asp:Content>
