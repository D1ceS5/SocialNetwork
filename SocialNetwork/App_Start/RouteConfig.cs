using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace SocialNetwork
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            //routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapPageRoute("login", "Pages/login", "~/Pages/Login.aspx");
            routes.MapPageRoute(null, "Pages/login", "~/Pages/Login.aspx");
            routes.MapPageRoute(null, "", "~/Pages/Login.aspx");

            routes.MapPageRoute("register", "Pages/register", "~/Pages/Register.aspx");
            routes.MapPageRoute(null, "Pages/register", "~/Pages/Register.aspx");

            routes.MapPageRoute("main", "Pages/main", "~/Pages/Main.aspx");
            routes.MapPageRoute(null, "main", "~/Pages/Main.aspx");
            routes.MapPageRoute(null, "Pages/main", "~/Pages/Main.aspx");
        }
    }
}
