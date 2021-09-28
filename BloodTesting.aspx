<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.master" CodeFile="BloodTesting.aspx.cs" Inherits="BloodTesting" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">

    <asp:Panel style="position: absolute; top: 237px; left: 164px; height: 411px; width: 963px;" 
        ID="Panel1" runat="server" BackColor="#FF0066" BorderColor="Red" BorderWidth="2px">
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/projectimages/bloodtest2.png" />
        
        <%--<asp:DropDownList ID="DropDownList1" runat="server" 
            style="position: absolute; top: 347px; left: 620px; width: 133px;">
            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
            <asp:ListItem Text="Database A" Value="Database A"></asp:ListItem>
            <asp:ListItem Text="Database B" Value="Database B"></asp:ListItem>
        </asp:DropDownList>--%>
        
        <asp:Label style="position: absolute; top: 30px; left: 318px" ID="Label1" 
            runat="server" Text="Enter Blood Test Details" Font-Bold="True" 
            Font-Size="Large" BackColor="#0066FF" BorderColor="Yellow" BorderWidth="2px"></asp:Label>

        <asp:Label style="position: absolute; top: 100px; left: 270px" ID="Label9" 
            runat="server" Text="NA (mmol/L)" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 101px; left: 360px" ID="TextBox1" runat="server"></asp:TextBox>
        
       

        <asp:Label style="position: absolute; top: 150px; left: 270px; height: 19px;" ID="Label6" 
            runat="server" Text="Blood Urea" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 150px; left: 360px; width: 125px;" 
            ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>CA</asp:ListItem>
            <asp:ListItem>LFG</asp:ListItem>
        </asp:RadioButtonList>
        
        <asp:Label style="position: absolute; top: 200px; left: 270px; height: 20px;" ID="Label7" 
            runat="server" Text="Basophils" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 200px; left: 364px; width: 112px;" ID="TextBox3" runat="server" MaxLength="3"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 240px; left: 270px" ID="Label8" 
            runat="server" Text="Magnesium" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 240px; left: 364px" ID="TextBox4" runat="server"></asp:TextBox>
        
         <asp:Label style="position: absolute; top: 285px; left: 207px; width: 128px;" ID="Label3" 
            runat="server" Text="Blood Renual Cutoff" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 285px; left: 364px" ID="TextBox5" MaxLength="10" runat="server"></asp:TextBox>
        <%--<asp:RegularExpressionValidator style="position: absolute; top: 293px; left: 445px;" 
            Text="*" ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Enter 10 digit mobile number" ValidationExpression="^[0-9]{10}" 
            ControlToValidate="TextBox5"></asp:RegularExpressionValidator>--%>
        
        <asp:ImageButton style="position: absolute; top: 349px; left: 477px; right: 400px;" 
            ID="ImageButton1" runat="server" 
            ImageUrl="~/projectimages/btnNext.png" onclick="ImageButton1_Click" />
        
        <asp:Label style="position: absolute; top: 100px; left: 540px; height: 18px;" ID="Label12" 
            runat="server" Text="NON - HDLX - M" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 100px; left: 700px; width: 202px;" 
            ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
        </asp:RadioButtonList>
        
        <asp:Label style="position: absolute; top: 170px; left: 540px; height: 18px;" ID="Label13" 
            runat="server" Text="LDL Cholesterol" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 161px; left: 700px; width: 202px;" 
            ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
        </asp:RadioButtonList>
        
        <asp:Label style="position: absolute; top: 240px; left: 540px; height: 18px;" ID="Label15" 
            runat="server" Text="HDL Cholesterol" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 240px; left: 698px; width: 202px;" 
            ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
        </asp:RadioButtonList>
        
        <%--<asp:Label style="position: absolute; top: 347px; left: 487px; height: 18px;" ID="Label16" 
            runat="server" Text="Stored By :" Font-Bold="True"></asp:Label>--%>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="false" ShowMessageBox="true" />
    </asp:Panel>

</asp:Content>


