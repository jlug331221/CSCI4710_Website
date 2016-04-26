using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.IsSecureConnection)
        {
            string url = Request.Url.ToString().Replace("https:", "http:");
            Response.Redirect(url);
        }

        txtEmail.Text = "";
        txtFName.Text = "";
        txtLName.Text = "";
        txtMessage.Text = "";
        txtPhone.Text = "";
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress(txtEmail.Text);
            mail.To.Add("ecjeeps2016@gmail.com");
            mail.Subject = "Contact From " + txtFName.Text + " " + txtLName.Text;
            mail.IsBodyHtml = true;
            mail.Body = "Email: " + txtEmail.Text + "<br />" + "Phone: " + txtPhone.Text + "<br />" + txtMessage.Text;

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("ecjeeps2016", "ecjeeps4710");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
        }
        catch (Exception)
        {
        }
    }
}