<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.master" CodeFile="testcomplete.aspx.cs" Inherits="testcomplete" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">

   
        
       <asp:Image ID="Image2" style="position: absolute; top: 313px; left: 187px;" runat="server" 
            ImageUrl="~/projectimages/test_complete.jpg" BorderColor="Red" BorderWidth="2" />
            
     <asp:Label style="position:absolute; top: 465px; left: 1065px;" ID="Label2" 
            Font-Names="Times New Roman" Font-Size="14" runat="server" 
            Text="Test Details are Sent to Client !" ForeColor="#520174"></asp:Label>
            
        <%--<asp:HyperLink style="position:absolute; top: 526px; left: 739px;" 
            ID="HyperLink1" runat="server" NavigateUrl="~/EnterPatientDetails.aspx" 
            ForeColor="#0066FF">[Click To Back]</asp:HyperLink>--%>
        

</asp:Content>

