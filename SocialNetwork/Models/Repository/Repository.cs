using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SocialNetwork.Models.Repository
{
    public class Repository
    {
        EFDbContext context = new EFDbContext();
        public IEnumerable<Account> Accounts { get { return context.Accounts; } }
        public IEnumerable<Login> Logins { get { return context.Logins; } }
        public IEnumerable<Mail> Mails { get { return context.Mails; } }
        public IEnumerable<Password> Passwords { get { return context.Passwords; } }
        public IEnumerable<Type> Types { get { return context.Types; } }
    }
}