using SocialNetwork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNetwork.Pages
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(StaticInfo.User.PicPath != "~/Content/Image/empty-profile.png")
            {
                propic.Src = StaticInfo.User.PicPath;
            }
            name.InnerText = StaticInfo.User.Account.Login.Text;
            testbutton1.InnerText = StaticInfo.User.SubscribersCount.ToString();
            testbutton2.InnerText = StaticInfo.User.SubscribedCount.ToString();
        }
    }
}