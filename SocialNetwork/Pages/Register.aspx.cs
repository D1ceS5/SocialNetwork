using SocialNetwork.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNetwork.Views
{
    public partial class Register : System.Web.UI.Page
    {
        
        public static int confCode = -1;
        public static string lst = string.Empty;
        public static string pst = string.Empty;
        public static string mst = string.Empty;
        public static string pcst = string.Empty;
        Repository repository = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {
            code.Visible = false;
            code_lab.Visible = false;
            send_btn.Visible = false;
            if (IsPostBack)
            {
                
                int opCode;
                
                
                string l = log.Value;
                string p = pass.Value;
                string m = mail.Value;
                string pc = passcnf.Value;

               

                int.TryParse(Request["cnf"], out opCode);
                if (opCode == 1)
                {
                    if (!String.IsNullOrEmpty(l) && !String.IsNullOrEmpty(p) && !String.IsNullOrEmpty(m) && !String.IsNullOrEmpty(pc))
                    {
                        if (p == pc)
                        {
                            if (repository.Accounts.Where(a => a.Login.Text == l).ToList().Count > 0)
                            {
                                errors.InnerText = "Login is already registered!";
                            }
                            else
                            {
                                if(Regex.IsMatch(l, "^[a-zA-Z][a-zA-Z0-9-_.]{1,20}$"))
                                {
                                    if (Regex.IsMatch(m, "^[-\\w.]+@([A-z0-9][-A-z0-9]+\\.)+[A-z]{2,4}$"))
                                    {
                                        confCode = new Random().Next(100000, 999999);
                                        code.Visible = true;
                                        code_lab.Visible = true;
                                        send_btn.Visible = true;
                                        lst = l;
                                        pst = p;
                                        mst = m;
                                        pcst = pc;
                                        // отправитель - устанавливаем адрес и отображаемое в письме имя
                                        MailAddress from = new MailAddress("kormet61@gmail.com", "SocialNetwork");
                                        // кому отправляем
                                        MailAddress to = new MailAddress(m);
                                        // создаем объект сообщения
                                        MailMessage mail = new MailMessage(from, to);
                                        // тема письма
                                        mail.Subject = "Подтверждение";
                                        // текст письма

                                        mail.Body = "<h1>Ваш код подтверждения:</h1> " +
                                            "<h2>" + confCode + "</h2>";

                                        // письмо представляет код html
                                        mail.IsBodyHtml = true;
                                        // адрес smtp-сервера и порт, с которого будем отправлять письмо
                                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                                        // логин и пароль
                                        smtp.Credentials = new NetworkCredential("kormet61@gmail.com", "Rjhybqxer1");
                                        smtp.EnableSsl = true;
                                        smtp.Send(mail);

                                    }
                                    else
                                    {
                                        errors.InnerText = "Uncorrect mail";
                                    }
                                }
                                else
                                {
                                    errors.InnerText = "Uncorrect Login";
                                }
                            }
                        }
                        else
                        {
                            errors.InnerText = "Password not equals";
                        }
                    }
                    else
                    {
                        errors.InnerText = "Fields must be filled!";
                    }
                }
               
            }
            
        }

        protected void send_btn_Click(object sender, EventArgs e)
        {
            if (confCode == Convert.ToInt32(code.Value))
            {
                if (!String.IsNullOrEmpty(lst) && !String.IsNullOrEmpty(pst) && !String.IsNullOrEmpty(mst) && !String.IsNullOrEmpty(pcst))
                {
                    if (repository.Passwords.Any(a => a.Text == pst))
                    {
                        repository.RegisterNewAcc(new Models.Account() { Login = new Models.Login() { Text = lst }, Password = repository.Passwords.Where(ps => ps.Text == pst).FirstOrDefault(), Mail = new Models.Mail() { Text = mst }, Type = new Models.Type() { Text = "User" } });
                    }
                    else
                    {
                        repository.RegisterNewAcc(new Models.Account() { Login = new Models.Login() { Text = lst }, Password = new Models.Password() { Text = pst }, Mail = new Models.Mail() { Text = mst }, Type = new Models.Type() { Text = "User" } });
                    }
                    repository.CreateUser(new Models.User.User() { Account = repository.Accounts.Where(a => a.Login.Text == lst).FirstOrDefault(), PicPath = "~/Content/Image/empty-profile.png", SubscribedCount = 0, SubscribersCount = 0 });
                }
            }
        }
    }
}