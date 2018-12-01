<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forget Password.aspx.cs" Inherits="Forget_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>忘記密碼</title>
    <link href="StyleSheet4.css" type="text/css" rel="stylesheet">
</head>
    <center style="height: 1100px">
<body>
    <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
    <h1>忘記密碼</h1> 
        
 <form id="form1" runat="server">
          
    
        <p>&nbsp;</p><p>&nbsp;</p>
        <br />
        <br />
        <p>
           
            <span style="font-size:x-large;">
               輸入帳號：<asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="335px"></asp:TextBox>
        <br />
        <br />
               電子信箱：<asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="335px"></asp:TextBox></span>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="確定"  BackColor="#FF9933" BorderColor="#CC6600" BorderWidth="2px" ForeColor="White" Height="30px" Width="45px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="回登入頁面"  BackColor="#FF9933" BorderColor="#CC6600" BorderWidth="2px" ForeColor="White" Height="30px" Width="100px" OnClick="Button2_Click" />
        </p>
        <p>
        </p>
        <p>
        </p>
    </form>
</body>
                    </center>
</html>
