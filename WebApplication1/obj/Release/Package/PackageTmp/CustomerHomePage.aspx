<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerHomePage.aspx.cs" Inherits="WebApplication1.CustomerHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" style="font-size: xx-large" Text="Welcome! Please select any of the following buttons to reach the custom-made data entry form for you, our lovely customers!"></asp:Label>
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" ImageUrl="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatic.mfah.com%2Fimages%2Fmfah-film-box-office.471638529597915451.jpg%3Fwidth%3D1200%26height%3D630%26bgcolor%3Dblur&amp;f=1&amp;nofb=1&amp;ipt=32a7ccbad93d5d8b5ce329c268679d2933ff34090d0e8b85f7943b022941b6d7&amp;ipo=images" />
            <br />
            Tickets<br />
            <asp:Button ID="Button1" runat="server" Text="Ticket Data Form" OnClick="Button1_Click" />
            <br />
            <asp:Label ForeColor="Red"  ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fres.cloudinary.com%2Fculturemap-com%2Fimage%2Fupload%2Far_7%3A4%2Cc_fill%2Cg_faces%3Acenter%2Cw_980%2Fv1493149029%2Fphotos%2F214287_original.jpg&amp;f=1&amp;nofb=1&amp;ipt=6d0993a4862133b6035a257685963d08524f4ac65ffb93006989d489539e6e92&amp;ipo=images" style="margin-right: 0px" />
            <br />
            <br />
            Events<br />
            <asp:Button ID="Button2" runat="server" Text="Event Data Form " />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Collections Test"></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Collections" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
