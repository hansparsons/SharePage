<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="Banner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="MainPage.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="titleBanner" >
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/newlogo22.jpg" style="margin-left: 24px; margin-top: 3px"  />
        <asp:Label ID="Label1" runat="server" Text="Welcome: Alex Parsons</br>Account Info</br>Settings" BorderStyle="None" Position ="static" Height="61px" style="margin-left: 23px; margin-top: 0px; margin-bottom: 0px" ForeColor="White" Width="255px"></asp:Label>
    </div>
    <div class ="whiteSpace">
    </div>
        <nav>
	        <ul>
		        <li><a href="#">Update</a></li>
		        <li><a href="#">Discover</a>
			        <ul>
				        <li><a href="#">Blah</a></li>
				        <li><a href="#">BlahBlah</a></li>
				        <li><a href="#">BlahBlahBlah</a>
					        <ul>
						        <li><a href="#">Blah</a></li>
						        <li><a href="#">BlahBlah</a></li>
					        </ul>
				        </li>
			        </ul>
		        </li>
		        <li><a href="#">Share</a>
			        <ul>
				        <li><a href="#">Blah</a></li>
				        <li><a href="#">BlahBlah</a></li>
			        </ul>
		        </li>
		        <li><a href="#">Friends</a></li>
                <li><a href="#">Search</a></li>
	        </ul>
            </nav>
                <div>
    <asp:TextBox ID="txtUrl" runat="server" Text="" />
    <asp:Button Text="Capture" runat="server" OnClick="Capture" />
    <br />
    <asp:Image ID="imgScreenShot" runat="server" Height="225" Width="300" Visible="true" />
    </div>
    </form>

    <iframe  src="http://cnn.com" height="375" width="500"  />

</body>
</html>
