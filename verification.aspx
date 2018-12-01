<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verification.aspx.cs" Inherits="verification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div style="margin:0 auto; width:500px; height: 400px">

            <center> 驗證碼：<asp:TextBox ID="TextBox1" runat="server" Width="255px"></asp:TextBox>&nbsp; <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" BackColor="#FF9933" BorderColor="#CC6600" BorderWidth="2px" ForeColor="#FFCCFF" />
</center>
            
        </div>
    </form>
</body>
</html>
