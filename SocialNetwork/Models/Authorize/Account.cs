using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SocialNetwork.Models
{
    public class Account
    {
        public int AccountId { get; set; }
        public virtual  Login Login { get; set; }
        public virtual Mail Mail { get; set; }
        public virtual Password Password { get; set; }
        public virtual Type Type { get; set; }
    }
}