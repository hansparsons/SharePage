<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        #form1 {
            height: 763px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="#FAFAFA" BorderStyle="Solid" Height="169px" Width="399px" BorderColor="#E8E8E8" BorderWidth="1px" style="margin-left: 193px; margin-top: 85px;">
            <asp:Panel ID="Panel2" runat="server" Height="22px" style="margin-left: 83px; margin-right: 0px; margin-top: 228px; margin-bottom: 0px" Width="248px" BackColor="#FAFAFA" BorderColor="#E8E8E8" BorderStyle="Solid" BorderWidth="1px">
        </asp:Panel>

        </asp:Panel>
        <p style="height: 25px; width: 149px; margin-left: 123px; margin-top: 58px; margin-right: 0px;">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="~/Images/Layer2.png" Width="70px" ImageAlign="Right" style="margin-top: 0px" />
            <asp:Panel ID="Panel3" runat="server" BackColor="#FAFAFA" BorderColor="#E8E8E8" BorderStyle="Solid" BorderWidth="1px" Height="299px" style="margin-left: 438px; margin-top: 0px; margin-bottom: 0px;" Width="119px">
            </asp:Panel>

        </p>
    </form>
</body>
</html>
