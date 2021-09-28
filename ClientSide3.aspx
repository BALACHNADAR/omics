<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/ClientMasterPage.master" CodeFile="ClientSide3.aspx.cs" Inherits="ClientSide3" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">


<asp:Label Style="position: absolute; text-align: center; top: 266px; left: 204px; width: 768px;" ID="Label1"
        runat="server" Font-Size="Large" BackColor="#FFFF66" BorderColor="#0066FF" BorderWidth="2px" ForeColor="Red" Font-Bold="True">Biomolecular</asp:Label>

    <asp:Image style="position: absolute; top: 322px; left: 96px; height: 550px; width: 550px;" 
        ID="Image1" runat="server" ImageUrl="~/projectimages/biomolecular.gif" BorderColor="#000066" BorderWidth="2px" />

    <asp:Panel Style="position: absolute; top: 318px; left: 710px; height: 381px; width: 419px;"
        ID="Panel1" runat="server" BackColor="Red">
        <br />
        <br />
        <table style=" height: 296px; width: 387px;">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Blood ID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <%--<td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="NAmmolL"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <%--<td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="bloodurea"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
              <%--  <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Basophils"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <%--<td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="BloodRenual"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <%--<td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="NONHDLX"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
              <%--  <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="LDLCholesterol"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
               <%-- <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
        </table>
    </asp:Panel>
    <asp:ImageButton style="position: absolute; top: 439px; left: 1188px; right: 42px; height: 136px;" 
            ID="ImageButton1" runat="server" 
            ImageUrl="~/projectimages/nextbutton.png" onclick="ImageButton1_Click" BorderColor="Red" BorderWidth="2px" BackColor="#CC0000" />
</asp:Content>
