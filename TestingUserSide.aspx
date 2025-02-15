﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.master" CodeFile="TestingUserSide.aspx.cs" Inherits="TestingUserSide" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">

 <asp:Panel style="position: absolute; top: 237px; left: 164px; height: 598px; width: 963px;" 
        ID="Panel1" runat="server" BackColor="#FFFFCC">
    
        <asp:Label style="position: absolute; top: 48px; left: 67px; width: 578px;" ID="Label1" 
            runat="server" Text="View Patient Basic Details and click to Start Testing " Font-Bold="True" 
            Font-Size="Large" BackColor="#FF3300" BorderColor="#FF66FF" BorderWidth="2px" ForeColor="#FFFF99"></asp:Label>
            
        <asp:Panel style="position: absolute; top: 103px; left: 70px; height: 216px; width: 873px;" 
            ID="Panel2" runat="server" ScrollBars="Both">
        
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                Width="828px" AutoGenerateColumns="False" CellSpacing="2" 
                ForeColor="Black">
                <RowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="indexid" HeaderText="Index ID" />
                    <asp:BoundField DataField="pid" HeaderText="PatientID" />
                    <asp:BoundField DataField="pfname" HeaderText="First Name" />
                    <asp:BoundField DataField="plname" HeaderText="Last Name" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" />
                    <asp:HyperLinkField HeaderText="Click to Start Testing" Text="Start" 
                        DataNavigateUrlFields="indexid" 
                        DataNavigateUrlFormatString="TestingUserSide1.aspx?ID={0}" >
                        <ControlStyle ForeColor="#003300" />
                    </asp:HyperLinkField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <br />
        
        </asp:Panel> 
        
       <%-- <asp:Panel style="position: absolute; top: 326px; left: 70px; height: 216px; width: 871px;" 
            ID="Panel3" runat="server" ScrollBars="Both">
        
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Database B"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                Width="827px" AutoGenerateColumns="False" CellSpacing="2" 
                ForeColor="Black">
                <RowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="indexid" HeaderText="Index ID" />
                    <asp:BoundField DataField="pid" HeaderText="PatientID" />
                    <asp:BoundField DataField="pfname" HeaderText="First Name" />
                    <asp:BoundField DataField="plname" HeaderText="Last Name" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" />
                    <asp:HyperLinkField HeaderText="Full View" Text="View" 
                        DataNavigateUrlFields="indexid" 
                        DataNavigateUrlFormatString="PatientRec2.aspx?ID={0}" >
                        <ControlStyle ForeColor="#003300" />
                    </asp:HyperLinkField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <br />
        
        </asp:Panel>--%>
        
     </asp:Panel>

</asp:Content>


