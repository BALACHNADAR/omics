<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="RegSuccess.aspx.cs" Inherits="RegSuccess" %>

<asp:Content ContentPlaceHolderID="materpage" runat="server">

    <asp:Panel style="position:absolute; width: 507px; top: 324px; left: 352px; height: 173px;" 
        ID="Panel1" runat="server" BorderWidth="2" ForeColor="#CC0000" 
        BackImageUrl="~/projectimages/greenback.jpg">
        
        <asp:Label style="position:absolute; top: 38px; left: 98px; height: 29px;" ID="Label1" 
            Font-Names="Times New Roman" Font-Size="22pt" runat="server" 
            Text="Registration Successfully.." ForeColor="#FFCC99"></asp:Label>
            
<%--        <asp:Label style="position:absolute; top: 80px; left: 122px;" ID="Label2" 
            Font-Names="Times New Roman" Font-Size="14" runat="server" 
            Text="[secret key was send your mail]" ForeColor="#520174"></asp:Label>--%>
            
        <asp:HyperLink style="position:absolute; top: 100px; left: 192px;" 
            ID="HyperLink1" runat="server" NavigateUrl="~/UserLogin.aspx" 
            ForeColor="#0066FF">[Click To Back]</asp:HyperLink>
        
    </asp:Panel>

</asp:Content>

