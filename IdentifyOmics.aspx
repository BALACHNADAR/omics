<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMasterPage.master" CodeFile="IdentifyOmics.aspx.cs" Inherits="IdentifyOmics" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">


    <asp:Label Style="position: absolute; text-align: center; vertical-align:middle; top: 243px; left: 266px; width: 472px; height: 54px;" ID="Label1"
        runat="server" Font-Size="XX-Large" BackColor="Yellow" BorderColor="#0066FF" BorderWidth="2px" ForeColor="Red" Font-Bold="True">IDENTIFY OMICS</asp:Label>

    <asp:Image style="position: absolute; top: 322px; left: 96px; height: 550px; width: 893px;" 
        ID="Image1" runat="server" ImageUrl="~/projectimages/omicsArchi2.png" BorderColor="#000066" BorderWidth="2px" BorderStyle="None" />

    <asp:Panel Style="position: absolute; top: 326px; left: 1023px; height: 381px; width: 419px;"
        ID="Panel1" runat="server" BackColor="#FD213D">
        <br />
        <br />
        <table style=" height: 296px; width: 387px;">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#CCCCCC" 
                        Text="Patient ID"></asp:Label>
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
                        Text="Blood ID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <%--<td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr style="background-color: pink">
                <td>
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#660033" 
                        Text="Asymptomatic" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
                </td>
              <%--  <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr style="background-color: pink">
                <td>
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#660033" Font-Size="Large" 
                        Text="Fungus"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
                </td>
                <%--<td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr style="background-color: pink">
                <td>
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="#660033" Font-Size="Large" 
                        Text="Lymphopenia"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
                </td>
                <%--<td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr style="background-color: pink">
                <td>
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="#660033" Font-Size="Large"
                        Text="Backteria"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
                </td>
              <%--  <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
            <tr style="background-color: pink">
                <td>
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#660033" Font-Size="Large" 
                        Text="Virus"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
                </td>
               <%-- <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>--%>
            </tr>
        </table>
    </asp:Panel>
    <asp:ImageButton style="position: absolute; top: 735px; left: 1020px; right: 123px; height: 136px;" 
            ID="ImageButton1" runat="server" 
            ImageUrl="~/projectimages/nextbutton.png" onclick="ImageButton1_Click" BorderColor="Red" BorderWidth="2px" BackColor="#CC0000" />
</asp:Content>
