<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.master" CodeFile="TempratureTesting.aspx.cs" Inherits="TempratureTesting" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">

    <asp:Panel style="position: absolute; top: 237px; left: 164px; height: 482px; width: 1062px;" 
        ID="Panel1" runat="server" BackColor="#999966" BorderColor="Red" BorderWidth="2px">
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/projectimages/tempratureicon.jpg" Height="183px" Width="244px" />
        
        <asp:Image ID="Image2" style="position: absolute; top: 1px; left: 961px; height: 327px; width: 97px;" runat="server" 
            ImageUrl="~/projectimages/salivaicon.png" />

        <%--<asp:DropDownList ID="DropDownList1" runat="server" 
            style="position: absolute; top: 347px; left: 620px; width: 133px;">
            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
            <asp:ListItem Text="Database A" Value="Database A"></asp:ListItem>
            <asp:ListItem Text="Database B" Value="Database B"></asp:ListItem>
        </asp:DropDownList>--%>
        
        <asp:Label style="position: absolute; top: 30px; left: 324px" ID="Label1" 
            runat="server" Text="Enter Temprature and Saliva Test Details" Font-Bold="True" 
            Font-Size="Large" BackColor="#FF0066" BorderColor="Yellow" BorderWidth="2px"></asp:Label>

        <asp:Label style="position: absolute; top: 101px; left: 396px" ID="Label9" 
            runat="server" Text="Temprature" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 101px; left: 560px" ID="TextBox1" runat="server"></asp:TextBox>
        
       

        <asp:Label style="position: absolute; top: 282px; left: 396px; height: 19px;" ID="Label6" 
            runat="server" Text="Fever" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 286px; left: 560px; width: 125px;" 
            ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        
        <asp:Label style="position: absolute; top: 165px; left: 396px; height: 20px;" ID="Label7" 
            runat="server" Text="Seldom" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 163px; left: 560px; width: 112px;" ID="TextBox3" runat="server" MaxLength="3"></asp:TextBox>
        
         <asp:Label style="position: absolute; top: 223px; left: 396px; width: 128px;" ID="Label3" 
            runat="server" Text="Hypothermia" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 223px; left: 560px" ID="TextBox5" MaxLength="10" runat="server"></asp:TextBox>
        
        <asp:ImageButton style="position: absolute; top: 362px; left: 457px; right: 333px; height: 72px;" 
            ID="ImageButton1" runat="server" 
            ImageUrl="~/projectimages/finishbutton.jpg" OnClick="ImageButton1_Click" />
        
        <%--<asp:Label style="position: absolute; top: 347px; left: 487px; height: 18px;" ID="Label16" 
            runat="server" Text="Stored By :" Font-Bold="True"></asp:Label>--%>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="false" ShowMessageBox="true" />
    </asp:Panel>

</asp:Content>


