<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.master" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<asp:Content ContentPlaceHolderID="usermaterpage" runat="server">

   <asp:Image style="position: absolute; top: 257px; left: 50px; height: 71px; width: 70px;" 
        ID="Image2" runat="server" ImageUrl="~/projectimages/2 Hot Home.png" />
    
   <asp:Label style="position: absolute; top: 273px; left: 329px; width: 251px;" ID="Label5" 
            runat="server" Text="User Search By Query(Name)" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
    <asp:TextBox style="position: absolute; top: 278px; left: 597px; width: 155px;" 
        ID="TextBox1" runat="server" Font-Bold="True"></asp:TextBox>
    <asp:ImageButton style="position: absolute; top: 269px; left: 774px;" 
        ID="ImageButton1" runat="server" ImageUrl="~/projectimages/btnsearch.png" 
        onclick="ImageButton1_Click" />
    
<asp:Panel style="position: absolute; top: 350px; left: 170px; height: 555px; width: 963px;" 
        ID="Panel1" runat="server" BackImageUrl="~/projectimages/greenback.jpg">
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/projectimages/DocuLibraryIcon.png" Height="49px" 
            Width="49px" />
        
        <asp:Label style="position: absolute; top: 6px; left: 385px; width: 197px;" ID="Label1" 
            runat="server" Text="User Searching Records" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
            
       <asp:Label style="position: absolute; top: 60px; left: 74px" ID="Label2" 
            runat="server" Text="Search Data" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
            
        <asp:Panel style="position: absolute; top: 103px; left: 70px; height: 216px; width: 873px;" 
            ID="Panel2" runat="server" ScrollBars="Both">
        
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Database A"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                Width="828px" AutoGenerateColumns="False" GridLines="Horizontal">
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField DataField="indexid" HeaderText="Index ID" />
                    <asp:BoundField DataField="pid" HeaderText="PatientID" />
                    <asp:BoundField DataField="pfname" HeaderText="First Name" />
                    <asp:BoundField DataField="plname" HeaderText="Last Name" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" />
                    <asp:BoundField DataField="pmobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="pemail" HeaderText="E-Mail" />
                    <asp:BoundField DataField="pAddress" HeaderText="Address" />
                    <asp:BoundField DataField="systolicbloodpre" HeaderText="systolicbloodpre" />
                    <asp:BoundField DataField="diastolicbloodpre" HeaderText="diastolicbloodpre" />
                    <asp:BoundField DataField="heartbeats" HeaderText="heartbeats" />
                    <asp:BoundField DataField="proteincatabolic" HeaderText="proteincatabolic" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
            <br />
        
        </asp:Panel> 
        
        <asp:Panel style="position: absolute; top: 326px; left: 70px; height: 216px; width: 871px;" 
            ID="Panel3" runat="server" ScrollBars="Both">
        
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Database B"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                Width="827px" AutoGenerateColumns="False" GridLines="Horizontal">
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField DataField="indexid" HeaderText="Index ID" />
                    <asp:BoundField DataField="pid" HeaderText="PatientID" />
                    <asp:BoundField DataField="pfname" HeaderText="First Name" />
                    <asp:BoundField DataField="plname" HeaderText="Last Name" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" />
                    <asp:BoundField DataField="pmobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="pemail" HeaderText="E-Mail" />
                    <asp:BoundField DataField="pAddress" HeaderText="Address" />
                    <asp:BoundField DataField="systolicbloodpre" HeaderText="systolicbloodpre" />
                    <asp:BoundField DataField="diastolicbloodpre" HeaderText="diastolicbloodpre" />
                    <asp:BoundField DataField="heartbeats" HeaderText="heartbeats" />
                    <asp:BoundField DataField="proteincatabolic" HeaderText="proteincatabolic" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
            <br />
        
        </asp:Panel>
        
     </asp:Panel>

</asp:Content>

