<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script language="javascript" type="text/javascript">

function MaxLength(maxLength)
{
text=document.getElementById('TextBox1');
if(text.value.length>maxLength)
{
alert("only max " + maxLength + " characters are allowed");
//this limits the textbox with only 5 characters as lenght is given as 5.
text.value = text.value.substring(0,maxLength);
}
}
</script>

    <asp:Image style="position: absolute; top: 291px; left: 267px; height: 550px; width: 947px;" ID="Image1" 
        runat="server" ImageUrl="~/projectimages/Architec.png" BorderColor="#3333CC" BorderWidth="2px" />
    </asp:Content>

