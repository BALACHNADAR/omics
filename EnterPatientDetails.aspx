<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.master" CodeFile="EnterPatientDetails.aspx.cs" Inherits="EnterPatientDetails" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">

    <asp:Panel style="position: absolute; top: 237px; left: 164px; height: 411px; width: 963px;" 
        ID="Panel1" runat="server" BackColor="#3B8EEE" BorderColor="Red" BorderWidth="2px">
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/projectimages/medical_record.png" />
        
        <%--<asp:DropDownList ID="DropDownList1" runat="server" 
            style="position: absolute; top: 347px; left: 620px; width: 133px;">
            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
            <asp:ListItem Text="Database A" Value="Database A"></asp:ListItem>
            <asp:ListItem Text="Database B" Value="Database B"></asp:ListItem>
        </asp:DropDownList>--%>
        
        <asp:Label style="position: absolute; top: 22px; left: 189px" ID="Label1" 
            runat="server" Text="Enter Basic Patient Details" Font-Bold="True" 
            Font-Size="Large" BackColor="Red" BorderColor="Yellow" BorderWidth="2px"></asp:Label>
        
        <asp:Label style="position: absolute; top: 90px; left: 190px" ID="Label3" 
            runat="server" Text="First Name" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 90px; left: 310px" ID="TextBox1" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 130px; left: 190px" ID="Label5" 
            runat="server" Text="Second Name" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 130px; left: 310px" ID="TextBox2" runat="server"></asp:TextBox>
            
        <asp:Label style="position: absolute; top: 170px; left: 190px" ID="Label6" 
            runat="server" Text="Gender" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 170px; left: 310px; width: 125px;" 
            ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>FeMale</asp:ListItem>
        </asp:RadioButtonList>
        
        <asp:Label style="position: absolute; top: 210px; left: 190px" ID="Label7" 
            runat="server" Text="Age" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 210px; left: 310px; width: 81px;" ID="TextBox3" runat="server" MaxLength="3"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 250px; left: 190px" ID="Label8" 
            runat="server" Text="D.O.B" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 250px; left: 310px" ID="TextBox4" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 290px; left: 190px" ID="Label9" 
            runat="server" Text="Mobile" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 290px; left: 310px" ID="TextBox5" MaxLength="10" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator style="position: absolute; top: 293px; left: 445px;" 
            Text="*" ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Enter 10 digit mobile number" ValidationExpression="^[0-9]{10}" 
            ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
        
        <asp:ImageButton style="position: absolute; top: 356px; left: 417px; right: 436px;" 
            ID="ImageButton1" runat="server" 
            ImageUrl="~/projectimages/btnsubmit.png" onclick="ImageButton1_Click" />
        
        <asp:Label style="position: absolute; top: 50px; left: 490px" ID="Label10" 
            runat="server" Text="EMail" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 50px; left: 610px" ID="TextBox6" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 90px; left: 490px" ID="Label11" 
            runat="server" Text="Address" Font-Bold="True"></asp:Label>
        <asp:TextBox style="position: absolute; top: 90px; left: 610px" ID="TextBox7" TextMode="MultiLine" runat="server"></asp:TextBox>
        
        <asp:Label style="position: absolute; top: 150px; left: 490px; height: 18px;" ID="Label12" 
            runat="server" Text="Sys Bloodpre" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 150px; left: 610px; width: 202px;" 
            ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
        </asp:RadioButtonList>
        
        <asp:Label style="position: absolute; top: 200px; left: 490px; height: 18px;" ID="Label13" 
            runat="server" Text="Dia Bloodpre" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 200px; left: 610px; width: 202px;" 
            ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
        </asp:RadioButtonList>
        
         <asp:Label style="position: absolute; top: 250px; left: 490px; height: 18px;" ID="Label14" 
            runat="server" Text="HeartBeats" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 250px; left: 610px; width: 202px;" 
            ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
        </asp:RadioButtonList>
        
        <asp:Label style="position: absolute; top: 300px; left: 490px; height: 18px;" ID="Label15" 
            runat="server" Text="Proteincatabolic" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList style="position: absolute; top: 300px; left: 610px; width: 202px;" 
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


