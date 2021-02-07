using AndrewJohnRogers.com.BasePages;
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
    public partial class Contact : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rfvName.ErrorMessage = ResourceText("Contact.NoName");
                rfvEmail.ErrorMessage = ResourceText("Contact.NoEmail");
                rfvSubject.ErrorMessage = ResourceText("Contact.NoSubject");
                rfvMessage.ErrorMessage = ResourceText("Contact.NoMessage");

                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                List<string> errors = new List<string>();

                if (txtName.Text == string.Empty)
                {
                    errors.Add(ResourceText("Contact.NoName"));
                }

                if (txtEmail.Text == string.Empty)
                {
                    errors.Add(ResourceText("Contact.NoEmail"));
                }

                if (txtSubject.Text == string.Empty)
                {
                    errors.Add(ResourceText("Contact.NoSubject"));
                }

                if (txtMessage.Text == string.Empty)
                {
                    errors.Add(ResourceText("Contact.NoMessage"));
                }

                if (errors.Count != 0)
                {
                    throw new Exception(string.Join(", ", errors));
                }

                MailMessage emailToSend = new MailMessage();

                emailToSend.From = new MailAddress(ConfigurationManager.AppSettings["ToEmailAddress"]);
                emailToSend.ReplyTo = new MailAddress(txtEmail.Text);

                emailToSend.To.Add(ConfigurationManager.AppSettings["ToEmailAddress"]);

                emailToSend.Subject = txtSubject.Text;
                emailToSend.Body = "From: " + Environment.NewLine + 
                                   txtName.Text + Environment.NewLine +
                                   Environment.NewLine + 
                                   "Message:" + Environment.NewLine + 
                                   txtMessage.Text;
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

                mSmtpClient.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EmailUseSSL"]);

                mSmtpClient.Send(emailToSend);

                btnSend.Enabled = false;

                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtSubject.Text = string.Empty;
                txtMessage.Text = string.Empty;

                lblEmailResponse.Text = ResourceText("Contact.Sent");
            }
            catch(SmtpException exc)
            {
                lblEmailResponse.Text = ResourceText("Contact.Error") + exc.Message;
            }
            catch (Exception exc)
            {
                lblEmailResponse.Text = ResourceText("Contact.Error") + exc.Message;
            }
        }
    }
}