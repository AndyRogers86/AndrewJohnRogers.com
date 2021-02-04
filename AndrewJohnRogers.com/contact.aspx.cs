using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AndrewJohnRogers.com
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtName.Text == string.Empty)
                {
                    throw new Exception("Please enter your name");
                }

                if (txtEmail.Text == string.Empty)
                {
                    throw new Exception("Please enter your email");
                }

                if (txtSubject.Text == string.Empty)
                {
                    throw new Exception("Please enter a subject");
                }

                if (txtMessage.Text == string.Empty)
                {
                    throw new Exception("Please enter your message");
                }

                MailMessage emailToSend = new MailMessage();

                emailToSend.From = new MailAddress(txtEmail.Text);

                emailToSend.To.Add(ConfigurationManager.AppSettings["ToEmailAddress"]);

                emailToSend.Subject = txtSubject.Text;
                emailToSend.Body = txtMessage.Text;
                emailToSend.Priority = MailPriority.Normal;
                emailToSend.IsBodyHtml = false;

                SmtpClient mSmtpClient = new SmtpClient();

                mSmtpClient.Host = ConfigurationManager.AppSettings["EmailHost"];
                mSmtpClient.Port = Convert.ToInt32(ConfigurationManager.AppSettings["EmailPort"]);

                if (ConfigurationManager.AppSettings["EmailUser"] != string.Empty)
                {
                    System.Net.NetworkCredential smptUserInfo = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["EmailUser"], ConfigurationManager.AppSettings["EmailPassword"]);

                    mSmtpClient.UseDefaultCredentials = false;
                    mSmtpClient.Credentials = smptUserInfo;
                }

                mSmtpClient.Send(emailToSend);

                btnSend.Enabled = false;
                lblEmailResponse.Text = "Email sent";
            }
            catch (Exception exc)
            {
                lblEmailResponse.Text = "Email error - " + exc.Message;
            }
        }
    }
}