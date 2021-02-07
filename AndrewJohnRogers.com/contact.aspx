<%@ Page Title="Andrew John Rogers - Contact" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AndrewJohnRogers.com.Contact" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="gridContact">
            <div class="grid-item--2-span grid-item-margin">
                <div>
                    <asp:Label ID="lblBlurb" runat="server" Text="If you wish to contact me, please fill out the form below" meta:resourcekey="lblBlurbResource1"></asp:Label>
                </div>
            </div>

            <div class="grid-item grid-item-margin">
                <div>
                    <asp:Label ID="lblName" runat="server" Text="Name" meta:resourcekey="lblNameResource1"></asp:Label>
                </div>

                <asp:TextBox ID="txtName" runat="server" meta:resourcekey="txtNameResource1"></asp:TextBox>
            </div>

            <div class="grid-item grid-item-margin">
                <div>
                    <asp:Label ID="lblEmail" runat="server" Text="Email" meta:resourcekey="lblEmailResource1"></asp:Label>
                </div>

                <asp:TextBox ID="txtEmail" runat="server" meta:resourcekey="txtEmailResource1"></asp:TextBox>
            </div>

            <div class="grid-item--2-span">
                <asp:Label ID="lblSubject" runat="server" Text="Subject" meta:resourcekey="lblSubjectResource1"></asp:Label>
            </div>
        
            <div class="grid-item--2-span">
                <asp:TextBox ID="txtSubject" runat="server" meta:resourcekey="txtSubjectResource1"></asp:TextBox>
            </div>

            <div class="grid-item--2-span">
                <asp:Label ID="lblMessage" runat="server" Text="Message" meta:resourcekey="lblMessageResource1"></asp:Label>
            </div>

            <div class="grid-item--2-span">
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="20" meta:resourcekey="txtMessageResource1"></asp:TextBox>
            </div>

            <div class="grid-item--2-span">
                <asp:Button ID="btnSend" runat="server" Text="Send" BorderColor="Black" BorderWidth="2px" BackColor="White" BorderStyle="Solid" Font-Size="X-Large" OnClick="btnSend_Click" meta:resourcekey="btnSendResource1" />
            </div>
        
            <div class="grid-item--2-span">
                <div class="error">
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="error">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="error">
                    <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="txtSubject" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="error">
                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div  class="error">
                    <asp:Label ID="lblEmailResponse" runat="server" CssClass="error" meta:resourcekey="lblEmailResponseResource1"></asp:Label>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
