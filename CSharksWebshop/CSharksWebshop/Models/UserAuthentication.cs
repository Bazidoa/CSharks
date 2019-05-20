using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace CSharksWebshop.Models
{
    public class UserAuthentication
    {
        public static string WhoAmI(IPrincipal user, HttpSessionStateBase session)
        {
            if (user.Identity.IsAuthenticated)
            {
                return user.Identity.Name;
            }
            else
            {
                return session.SessionID;
            }
        }
    }
}