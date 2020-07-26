using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SocialNetwork.Models
{
    public class Account
    {
        public int AccountId { get; set; }
        public  Login Login { get; set; }
        public Mail Mail { get; set; }
        public Password Password { get; set; }
        public Type Type { get; set; }
    }
}