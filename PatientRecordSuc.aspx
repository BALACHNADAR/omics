<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.master" CodeFile="PatientRecordSuc.aspx.cs" Inherits="PatientRecordSuc" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">

    <asp:Panel style="position:absolute; width: 924px; top: 301px; left: 317px; height: 216px;" 
        ID="Panel1" runat="server" BorderWidth="2" ForeColor="#CC0000" 
    BackColor="#660033" BackImageUrl="~/projectimages/greenback.jpg">
        
        <asp:Label style="position:absolute; top: 56px; left: 145px; height: 46px; width: 644px;" ID="Label1" 
            Font-Names="Times New Roman" Font-Size="22pt" runat="server" 
            Text="Patient Basic Details Stored Successfully.." ForeColor="#FFCC99"></asp:Label>
            
<%--        <asp:Label style="position:absolute; top: 80px; left: 122px;" ID="Label2" 
            Font-Names="Times New Roman" Font-Size="14" runat="server" 
            Text="[secret key was send your mail]" ForeColor="#520174"></asp:Label>--%>
            
        <asp:HyperLink style="position:absolute; top: 131px; left: 383px;" 
            ID="HyperLink1" runat="server" NavigateUrl="~/EnterPatientDetails.aspx" 
            ForeColor="#0066FF">[Click To Back]</asp:HyperLink>
        
    </asp:Panel>

</asp:Content>

