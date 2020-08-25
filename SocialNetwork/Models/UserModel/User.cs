using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SocialNetwork.Models.User
{
    public class User
    {
        public int UserId { get; set; }
        public virtual Account Account { get; set; }
        public string FName { get; set; }
        public int SubscribersCount { get; set; }
        public int SubscribedCount { get; set; }
        public string PicPath { get; set; }
    }
}