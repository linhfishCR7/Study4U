using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;
using Microsoft.AspNet.FriendlyUrls.Resolvers;

namespace Study4U
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
        }
        public class MyWebFormsFriendlyUrlResolver : WebFormsFriendlyUrlResolver
        {
            public MyWebFormsFriendlyUrlResolver() { }

            public override string ConvertToFriendlyUrl(string path)
            {
                if (!string.IsNullOrEmpty(path))
                {
                    if (path.ToLower().Contains("/ckfinder/"))
                    { // Here the filter code
                        return path;
                    }
                }
                return base.ConvertToFriendlyUrl(path);
            }
        }
    }
}
