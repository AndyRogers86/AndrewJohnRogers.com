<%@ Page Title="Andrew John Rogers" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AndrewJohnRogers.com.Index" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <section>
        <div class="grid">
            <div class="grid-item">
                <img src="img/portrait.jpg" />
            </div>

            <div class="grid-item">
                <h1>
                    <asp:Label ID="lblTitle1" runat="server" Text="Professional Full Stack .Net Developer" meta:resourcekey="lblTitle1Resource1"></asp:Label>                    
                </h1>
                <h1>
                    <asp:Label ID="lblTitle2" runat="server" Text="Amateur Photographer" meta:resourcekey="lblTitle2Resource1"></asp:Label>          
                </h1>
                <h1>
                    <asp:Label ID="lblTitle3" runat="server" Text="Watch Collector" meta:resourcekey="lblTitle3Resource1"></asp:Label>          
                </h1>
            </div>
        </div>        
    </section>

</asp:Content>
