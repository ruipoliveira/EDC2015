using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using uastudent_v2.Models;
using System.Xml;

namespace uastudent_v2.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                criarXML(Email.Text);
                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
        protected void criarXML(String mail)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();
            XmlElement property = xdoc.CreateElement("user");
            XmlAttribute email = xdoc.CreateAttribute("email");

            XmlElement dados = xdoc.CreateElement("settings");
            XmlAttribute cantinas = xdoc.CreateAttribute("cantinas");
            XmlAttribute parques = xdoc.CreateAttribute("parques");

            int ID = -1;

            email.Value = mail;

            cantinas.Value = "";
            parques.Value = "";

            dados.Attributes.Append(cantinas);
            dados.Attributes.Append(parques);

            property.Attributes.Append(email);

            property.AppendChild(dados);

            xdoc.DocumentElement.InsertBefore(property, xdoc.DocumentElement.FirstChild);
            XmlDataSource1.Save();
        }
    }
}