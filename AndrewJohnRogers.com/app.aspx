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
                    <asp:Label ID="lblPolerouterAppDesc1" runat="server" Text="The idea for this app came to me when I was going around a watch fair. I had found a watch I liked by I was unable to authenticate it as I had no data connection."></asp:Label>
                </p>

                <p>
                    <asp:Label ID="lblPolerouterAppDesc2" runat="server" Text="The Universal Geneve Polerouter app contains a local database (once it has done an initial sync) of all of the known, correct models of this wonderful line of watches. This allows collectors to check a watch even if they don't have an internet connection."></asp:Label>
                </p>

                <p>
                    <asp:Label ID="lblPolerouterAppDesc4" runat="server" Text="The app connects to a .Net Web API service to do its syncing, is written in Xamarin Forms and is available on both Android and iOS."></asp:Label>
                </p>
            </div>
        </div>
    </section>

</asp:Content>
