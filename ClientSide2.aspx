<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/ClientMasterPage.master" CodeFile="ClientSide2.aspx.cs" Inherits="ClientSide2" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">


<asp:Label Style="position: absolute; text-align: center; top: 266px; left: 204px; width: 768px;" ID="Label1"
        runat="server" Text="Patient Record Full View" Font-Bold="True" Font-Size="Large" BackColor="#FFFF66" BorderColor="#0066FF" BorderWidth="2px" ForeColor="Red"></asp:Label>
    <asp:Panel Style="position: absolute; top: 318px; left: 203px; height: 381px; width: 919px;"
        ID="Panel1" runat="server" BackColor="Black">
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
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:HyperLink style="position: absolute; top: 271px; left: 1037px;" 
        ID="HyperLink1" runat="server" NavigateUrl="~/TestingUserSide.aspx"><< Back</asp:HyperLink>
    <asp:ImageButton style="position: absolute; top: 434px; left: 1173px; right: 275px;" 
            ID="ImageButton1" runat="server" 
            ImageUrl="~/projectimages/starttest1.png" onclick="ImageButton1_Click" BorderColor="Red" BorderWidth="2px" />
</asp:Content>
