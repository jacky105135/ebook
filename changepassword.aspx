<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>  
    <link href="StyleSheet3.css" type="text/css" rel="stylesheet">
</head>
    <center style="height: 1100px">
<body>
    <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
    <h1>修改密碼</h1> 
    <form id="form1" runat="server">
       
        <p>&nbsp;</p>
        

        <br />
        
        <span class="data">
        請輸入帳號：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
        <br />
        
        <br />
         請輸入新的密碼：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="252px" TextMode="Password"></asp:TextBox>
         <br />
        
         <br />
         請再次輸入新的密碼：<asp:TextBox ID="TextBox2" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
          </span>

        
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定" BackColor="#C63300" BorderColor="#CC6600" BorderWidth="2px" Font-Size="15px" ForeColor="White" Height="32px" OnClick="Button1_Click" />


        <br />


    </form>
</body>
        </center>
</html>
