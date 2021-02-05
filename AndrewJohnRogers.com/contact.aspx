<%@ Page Title="Andrew John Rogers - Contact" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="AndrewJohnRogers.com.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="gridContact">
            <div class="grid-item--2-span grid-item-margin">
                <div>
                    <asp:Label ID="lblBlurb" runat="server" Text="If you wish to contact me, please fill out the form below"></asp:Label>
                </div>
            </div>

            <div class="grid-item grid-item-margin">
                <div>
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </div>

                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>

            <div class="grid-item grid-item-margin">
                <div>
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </div>

                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <div class="grid-item--2-span">
                <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
            </div>
        
            <div class="grid-item--2-span">
                <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            </div>

            <div class="grid-item--2-span">
                <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
            </div>

            <div class="grid-item--2-span">
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="20"></asp:TextBox>
            </div>
        
            <div class="grid-item">
                <asp:Label ID="lblEmailResponse" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>

            <div class="grid-item">
                <asp:Button ID="btnSend" runat="server" Text="Send" BorderColor="Black" BorderWidth="2px" BackColor="White" BorderStyle="Solid" Font-Size="X-Large" OnClick="btnSend_Click" />
            </div>
        </div>
    </section>

</asp:Content>
