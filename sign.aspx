<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign.aspx.cs" Inherits="sign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
 <form>
     <html>
 <head>
  <meta charset="utf-8">
  <title>HoMePaGE</title>
  <!--Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <!--font awesome-->
  <script src="https://use.fontawesome.com/d1341f9b7a.js"></script>
  <!--CSS-->
  <link href="StyleSheet2.css" type="text/css" rel="stylesheet">
 </head>
 
 <body>

      <div class="container">
       <h1>會員註冊</h1> 
        
        <form name="form1" runat="server">
   
   
   <p align="center">帳號
   <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>               
                <br>密碼
   <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox> 
   <br>信箱
   <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox> 
   <br>
       
   <br>
   
   <asp:Button ID="Button1" runat="server" Text="註冊" OnClick="Button1_Click" style="width:60px;height:30px;" />
      </p>
 </form>
     
     </div> 
 </body>
</html>



