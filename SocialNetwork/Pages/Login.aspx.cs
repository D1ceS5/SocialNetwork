using SocialNetwork.Models;
using SocialNetwork.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNetwork.Views
{
    public partial class Login : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Repository repository = new Repository();
                int opCode;
                string l = log.Value;
                string p = pass.Value;
                int.TryParse(Request["sin"],out opCode);
                if (opCode != null)
                {
                    if (!String.IsNullOrEmpty(l) && !String.IsNullOrEmpty(p))
                    {
                        Account acc = repository.Accounts.FirstOrDefault();

                        List<Account> accs = repository.Accounts.Where(a => a != null && a.Password.Text == p).ToList();
                        int zalupa = accs.Count();
                        accs = repository.Accounts.Where(a => a != null && a.Login.Text == l).ToList();


                        if (accs!=null)
                        {
                            Response.Redirect("main");
                        }
                        else
                        {
                            errors.InnerText = "Uncorrect password or login";
                        }
                    }
                    else
                    {
                        errors.InnerText = "Fields must be filled!";
                    }
                }
            }
        }
    }
}