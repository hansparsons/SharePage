﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Dashed" Height="209px" Width="382px">
        </asp:Panel>
        <p>
        <asp:Button class="myBtn" ID="Button1"  runat="server" Text="Post" BackColor="#d93e3b" Height="22px" Width="70px" CssClass="myBtn" />
        </p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="~/Images/Layer2.png" Width="70px" />
    </form>
</body>
</html>
