<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Form._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript. By Anthony Lijarza&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="ToGoogleButton" runat="server" BorderStyle="None" CssClass="noUnderline pinkColor" NavigateUrl="https://www.google.com">To Google</asp:HyperLink>
            </p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
            <div id="imageDiv">
                <img id="landoImg" alt="" src="Resources/Lando.jpg" /></div>
            <p>

            </p>
            
            <p>
            
            </p>
        </section>
    </main>

</asp:Content>
