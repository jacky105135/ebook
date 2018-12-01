<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>


<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>HoMePaGE</title>
  <!--Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <!--font awesome-->
  <script src="https://use.fontawesome.com/d1341f9b7a.js"></script>
  <!--CSS-->
  <link href="StyleSheet.css" type="text/css" rel="stylesheet">
 </head>
 
 <body>
      <div id="clock"></div>

     
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script>
  $(document).ready(function(){
       $('#sidebar-btn').click(function(){
             $('#sidebar').toggleClass('visible');
       });
  });
  setInterval(clock, 1000);
  function clock() {
      var date = new Date();
      var hours = date.getHours();
      var minutes = date.getMinutes();
      var seconds = date.getSeconds();
      if (hours < 10) {
          hours = '0' + hours;
      }
      if (minutes < 10) {
          minutes = '0' + minutes;
      }
      if (seconds < 10) {
          seconds = '0' + seconds;
      }
      document.getElementById('clock').innerText = hours + ":" + minutes + ":" + seconds;
  }
 </script>
      <div class="container">
       <h1>會員登入</h1> 
            
        <form name="form1" runat="server">
   
   <p align="center">帳號
   <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>               
                <br>密碼
   <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox> 
   <br>
       
   <br>
   <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" style="width:60px;height:30px;" />
   <asp:Button ID="Button2" runat="server" Text="註冊" OnClick="Button2_Click" style="width:60px;height:30px;"/>
   <asp:Button ID="Button3" runat="server" Text="忘記密碼?" OnClick="Button3_Click" style="width:80px;height:30px;"/>
      </p>
 </form>
     
     </div> 
 </body>
</html>

