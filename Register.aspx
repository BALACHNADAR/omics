<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ContentPlaceHolderID="materpage" runat="server">


    <asp:Panel style="position: absolute; top: 268px; left: 154px; height: 295px; width: 963px;" 
        ID="Panel1" runat="server" BackColor="#5186CF" BorderColor="#CC0000" BorderWidth="2px">
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/projectimages/register.jpg" Height="86px" Width="102px" />
        
        <asp:Label style="position: absolute; top: 17px; left: 369px" ID="Label1" 
            runat="server" Text="USER REGISTRATION PAGE" Font-Bold="True" 
            Font-Size="Medium"></asp:Label>
        
        <asp:Label style="position: absolute; top: 70px; left: 120px" ID="Label2" 
            runat="server" Text="First Name" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 70px; left: 260px" ID="TextBox1" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 110px; left: 120px" ID="Label3" 
            runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 110px; left: 260px" ID="TextBox2" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 150px; left: 120px" ID="Label4" 
            runat="server" Text="Login ID" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 150px; left: 260px" ID="TextBox3" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 190px; left: 120px" ID="Label5" 
            runat="server" Text="Password" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 190px; left: 260px; height: 22px;" 
            ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 70px; left: 460px" ID="Label6" 
            runat="server" Text="Email - ID" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 70px; left: 590px" ID="TextBox5" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 110px; left: 460px" ID="Label7" 
            runat="server" Text="Mobile" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 110px; left: 590px" ID="TextBox6" 
            runat="server" MaxLength="10"></asp:TextBox>
        
         <asp:Label style="position: absolute; top: 150px; left: 460px" ID="Label8" 
            runat="server" Text="Age" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 150px; left: 590px" ID="TextBox7" 
            runat="server" MaxLength="3"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 190px; left: 460px" ID="Label9" 
            runat="server" Text="Photo" Font-Bold="True"></asp:Label>
        <asp:FileUpload style="position: absolute; top: 190px; left: 590px; bottom: 83px;" 
            ID="FileUpload1" runat="server" />
        
        <asp:ImageButton style="position: absolute; top: 229px; left: 396px; height: 37px; width: 109px;" 
            ID="ImageButton1" runat="server" 
            ImageUrl="~/projectimages/btnsubmit.png" onclick="ImageButton1_Click" />
        <asp:ImageButton style="position: absolute; top: 229px; left: 522px; width: 114px; height: 40px;" 
            ID="ImageButton2" runat="server" 
            ImageUrl="~/projectimages/btncancel.png" onclick="ImageButton2_Click" />
            
    </asp:Panel>

</asp:Content>

