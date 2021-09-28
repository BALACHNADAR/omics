<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainMasterPage.master" CodeFile="PatientRec2.aspx.cs" Inherits="PatientRec2" %>

<asp:Content ContentPlaceHolderID="mainmaterpage" runat="server">



<asp:Label Style="position: absolute; top: 266px; left: 452px; width: 294px;" ID="Label1"
        runat="server" Text="Patient Record Full View" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:Panel Style="position: absolute; top: 318px; left: 203px; height: 381px; width: 919px;"
        ID="Panel1" runat="server">
        <asp:Label ID="Label30" runat="server" Text="Index ID : " Font-Bold="True" 
            Font-Size="Large" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <table style="width: 916px; height: 296px;">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Patient ID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="DOB"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Mobile"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="E-Mail"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Systolic Blood Pressure"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Diastolic Blood Pressure"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Heartbeats"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Proteincatabolic"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="StoredBy"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:HyperLink style="position: absolute; top: 271px; left: 1037px;" 
        ID="HyperLink1" runat="server" NavigateUrl="~/PatientRec.aspx"><< Back</asp:HyperLink>


</asp:Content>
