using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forget_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage Msg = new MailMessage();
            Msg.From = new MailAddress("milkop555@gmail.com");// 暫定寄信箱
            Msg.To.Add(TextBox2.Text);
            Msg.Subject = "會員您忘記密碼了嗎?";
            Msg.Body = "<h2>您忘記密碼了嗎??</h2><br>驗證碼為：<b>" + CreateRandomCode(6) +
                "</b><br>如要更改請點此連結<a href='我們的網頁名稱'>修改密碼</a>";//內文
            Msg.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential Networkcred = new System.Net.NetworkCredential();
            Networkcred.UserName = "milkop555@gmail.com";
            Networkcred.Password = "milkop550";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = Networkcred;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(Msg);
        }
        catch (Exception ee)
        {
            Response.Write(ee.Message.ToString());
        }
        Response.Write("<script language=javascript>alert('驗證碼已寄送')</script>");
        Response.Write("<script language=javascript>window.location.href='verification.aspx'</script>");

    }

    private string CreateRandomCode(int Number)
    {
        string allChar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
        string[] allCharArray = allChar.Split(',');
        string randomCode = "";
        int temp = -1;

        Random rand = new Random();
        for (int i = 0; i < Number; i++)
        {
            if (temp != -1)
            {
                rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
            }
            int t = rand.Next(36);
            if (temp != -1 && temp == t)
            {
                return CreateRandomCode(Number);
            }
            temp = t;
            randomCode += allCharArray[t];
        }
        Session["randomCode"] = randomCode;
        return randomCode;
    }
}