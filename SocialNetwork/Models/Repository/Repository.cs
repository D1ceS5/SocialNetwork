using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SocialNetwork.Models.Repository
{
    public class Repository
    {
        EFDbContext context = new EFDbContext();
        public List<Account> Accounts { get { return context.Accounts.ToList(); } }
        public List<Login> Logins { get { return context.Logins.ToList(); } }
        public List<Mail> Mails { get { return context.Mails.ToList(); } }
        public List<Password> Passwords { get { return context.Passwords.ToList(); } }
        public List<Type> Types { get { return context.Types.ToList(); } }


        public void RegisterNewAcc(Account account)
        {
            context.Accounts.Add(account);
            context.SaveChanges();
        }
    }
}