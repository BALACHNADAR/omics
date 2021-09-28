<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ClientLogin.aspx.cs" Inherits="ClientLogin" %>

<asp:Content ContentPlaceHolderID="materpage" runat="server">

    <asp:Panel style="position: absolute; top: 287px; left: 193px; height: 281px; width: 963px;" 
        ID="Panel1" runat="server" BackColor="#FF0066" BorderColor="#990033" BorderWidth="2px">
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/projectimages/clienticon.jpg" Height="200px" Width="194px" />
        
        <asp:Label style="position: absolute; top: 17px; left: 427px" ID="Label1" 
            runat="server" Text="Client Login Page" Font-Bold="True" Font-Size="Medium"></asp:Label>
        
        <asp:Label style="position: absolute; top: 70px; left: 360px" ID="Label2" 
            runat="server" Text="Client Id" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 70px; left: 500px" ID="TextBox1" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 120px; left: 360px" ID="Label3" 
            runat="server" Text="Password" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 120px; left: 500px" TextMode="Password" ID="TextBox2" runat="server"></asp:TextBox>
        
        <asp:ImageButton style="position: absolute; top: 164px; left: 498px" 
            ID="ImageButton1" runat="server" 
            ImageUrl="~/projectimages/btnsubmit.png" onclick="ImageButton1_Click" />
        
    </asp:Panel>

</asp:Content>
