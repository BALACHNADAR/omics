<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainMasterPage.master" CodeFile="deleterecord.aspx.cs" Inherits="deleterecord" %>

<asp:Content ContentPlaceHolderID="mainmaterpage" runat="server">


    <asp:Panel style="position: absolute; top: 237px; left: 164px; height: 333px; width: 972px;" 
        ID="Panel1" runat="server">
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/projectimages/help_index.png" Height="90px" 
            Width="90px" />
        
        <asp:Label style="position: absolute; top: 7px; left: 410px; width: 197px;" ID="Label1" 
            runat="server" Text="Record Linkage Process" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
            
       <asp:Label style="position: absolute; top: 61px; left: 108px" ID="Label2" 
            runat="server" Text="Step 4 : Delete Duplicate Record" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
      <asp:Panel style="position: absolute; top: 102px; left: 70px; height: 597px; width: 873px;" 
            ID="Panel2" runat="server" ScrollBars="Both">
        
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
                Text="Deleted Record is :"></asp:Label>
            <br />
        
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                AutoGenerateColumns="False">
                <RowStyle BackColor="White" ForeColor="#003399" />
                <Columns>
                    <asp:BoundField DataField="indexid" HeaderText="Index ID" />
                    <asp:BoundField DataField="pid" HeaderText="PatientID" />
                    <asp:BoundField DataField="EncFNamePlusMob" HeaderText="Enc(FName)+Mob" />
                    <asp:BoundField DataField="First5DMobPlusEncLName" 
                        HeaderText="First5DMob+Enc(LName)" />
                    <asp:BoundField DataField="EncAddPlusL5DMob" HeaderText="Enc(Add)+L5DMob" />
                    <asp:BoundField DataField="EncEmailPlusMobile" HeaderText="Enc(Email)+Mobile" />
                    <asp:BoundField DataField="pfname" HeaderText="First Name" />
                    <asp:BoundField DataField="plname" HeaderText="Last Name" />
                    <asp:BoundField DataField="pmobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="pemail" HeaderText="EMail" />
                    <asp:BoundField DataField="pAddress" HeaderText="Address" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" />
                    <asp:BoundField DataField="systolicbloodpre" HeaderText="systolicbloodpre" />
                    <asp:BoundField DataField="diastolicbloodpre" HeaderText="diastolicbloodpre" />
                    <asp:BoundField DataField="heartbeats" HeaderText="heartbeats" />
                    <asp:BoundField DataField="proteincatabolic" HeaderText="proteincatabolic" />
                    <asp:BoundField DataField="MatchSts" HeaderText="Match Status">
                        <ControlStyle BackColor="Red" />
                        <ItemStyle BackColor="Red" Font-Bold="True" ForeColor="Yellow" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            </asp:GridView>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" 
                ImageUrl="~/projectimages/go-back-icon.png" onclick="ImageButton4_Click" 
                Height="57px" Width="65px" />
            <br />
        </asp:Panel>
           
    </asp:Panel>

</asp:Content>
