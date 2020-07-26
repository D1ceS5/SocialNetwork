using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace SocialNetwork.Models.Repository
{
    public class EFDbContext:DbContext
    {
        public DbSet<Account> Accounts { get; set; }
        public DbSet<Login> Logins { get; set; }
        public DbSet<Mail> Mails { get; set; }
        public DbSet<Password> Passwords { get; set; }
        public DbSet<Type> Types { get; set; }
    }
}