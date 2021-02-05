<%@ Page Title="Andrew John Rogers - App" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="app.aspx.cs" Inherits="AndrewJohnRogers.com.app" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="gridApp">
            <div class="grid-item--4-span">
                <h2>
                    Universal Geneve Polerouter 

                    <asp:HyperLink ID="hypPlayStore" runat="server" NavigateUrl="https://play.google.com/store/apps/details?id=com.universalgenevepolerouter.ugp" Target="_blank" ToolTip="Google Play Store">
                        <asp:Image ID="imgPlayStore" runat="server" ImageUrl="~/img/Play-Store-Icon.png" />
                    </asp:HyperLink>

                    <asp:HyperLink ID="hypAppStore" runat="server" NavigateUrl="https://apps.apple.com/us/app/universal-geneve-polerouter/id1496551431" Target="_blank" ToolTip="Apple App Store">
                        <asp:Image ID="imgAppStore" runat="server" ImageUrl="~/img/App-Store-Icon.png" />
                    </asp:HyperLink>
                </h2>
            </div>

            <div class="grid-item grid-item-mobile-show">
                <img src="img/app/app1.png" />
            </div>

            <div class="grid-item grid-item-mobile-show">
                <img src="img/app/app2.png" />
            </div>

            <div class="grid-item grid-item-mobile-hide">
                <img src="img/app/app3.png" />
            </div>

            <div class="grid-item grid-item-mobile-hide">
                <img src="img/app/app5.png" />
            </div>

            <div class="grid-item--4-span">
                <p>            
                    <asp:Label ID="lblPolerouterAppDesc1" runat="server" Text="The Universal Geneve Polerouter family of vintage wristwatches have become a favourite amongst collectors. Unfortunately the lack of knowledge surrounding the many different models and their specifications, has hindered the proper repair and restoration of many examples."></asp:Label>
                </p>

                <p>
                    <asp:Label ID="lblPolerouterAppDesc2" runat="server" Text="UniversalGenevePolerouter.com was set up by fellow collector "></asp:Label>
                    <asp:HyperLink ID="hypHamblar" runat="server" NavigateUrl="https://www.instagram.com/hamblar/">Adam Hambly</asp:HyperLink>
                    <asp:Label ID="lblPolerouterAppDesc3" runat="server" Text=". However, as it is a website it is only accessable when a mobile device has a WiFi or mobile data connection. I was finding this be be a bit of an issue when I was searching for watches at watch fairs or remote antique shops as I was unable to evaluate a watches authenticity."></asp:Label>
                </p>

                <p>
                    <asp:Label ID="lblPolerouterAppDesc4" runat="server" Text="Using the data from Adam's website I created a mobile app that will work offline (once synced up) and allow collectors to view the watches when they have no data connection. The app is synced from a .Net Web API service and is built with Xamarin Forms."></asp:Label>
                </p>
            </div>
        </div>
    </section>

</asp:Content>
