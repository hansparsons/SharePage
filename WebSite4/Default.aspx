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
        .auto-style1 {
            width: 236px;
        }
        .auto-style2 {
            width: 236px;
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

    <div style="height: 822px">
        <asp:Panel ID="Panel1" runat="server" BackColor="#FAFAFA" BorderStyle="Solid" Height="186px" Width="399px" BorderColor="#E8E8E8" BorderWidth="1px" style="margin-left: 193px; margin-top: 85px;">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FAFAFA" BorderColor="#E8E8E8" BorderStyle="Solid" BorderWidth="1px" Height="308px" style="margin-left: 471px; margin-top: 0px; margin-bottom: 0px;" Width="170px">
            </asp:Panel>

        </asp:Panel>
            <br />
        <table style="width: 100%; height: 28px; margin-top: 59px;">
            <tr>
                <td class="auto-style2">

            <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="~/Images/Layer2.png" style="margin-top: 0px; margin-left: 188px; margin-right: 4px; margin-bottom: 0px;" Width="70px" OnClick="ImageButton1_Click"/>
                </td>
                <td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server" Width="303px" style="margin: 0px 6px 0px 0px;" Height="18px"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            <br />
            <br />
            <br />
            <br />
            <asp:FileUpload ID="FileUploader" runat="server" />
            <br />
            <br />
            <asp:TextBox ID="DebugText" runat="server" Height="96px" Width="559px" TextMode="MultiLine" ValidateRequestMode="Disabled"></asp:TextBox>


            </div>
    </form>
</body>
</html>


    

    

