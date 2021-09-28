<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainMasterPage.master" CodeFile="PatientRec.aspx.cs" Inherits="PatientRec" %>

<asp:Content ContentPlaceHolderID="mainmaterpage" runat="server">

 <asp:Panel style="position: absolute; top: 237px; left: 164px; height: 598px; width: 963px;" 
        ID="Panel1" runat="server">
    
        <asp:Label style="position: absolute; top: 7px; left: 410px; width: 197px;" ID="Label1" 
            runat="server" Text="View Patient Record" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
            
       <asp:Label style="position: absolute; top: 61px; left: 108px" ID="Label2" 
            runat="server" Text="View Patient Record" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
            
        <asp:Panel style="position: absolute; top: 103px; left: 70px; height: 216px; width: 873px;" 
            ID="Panel2" runat="server" ScrollBars="Both">
        
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Database A"></asp:Label>
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
                    <asp:HyperLinkField HeaderText="Full View" Text="View" 
                        DataNavigateUrlFields="indexid" 
                        DataNavigateUrlFormatString="PatientRec1.aspx?ID={0}" >
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
        
        <asp:Panel style="position: absolute; top: 326px; left: 70px; height: 216px; width: 871px;" 
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
        
        </asp:Panel>
        
     </asp:Panel>

</asp:Content>


