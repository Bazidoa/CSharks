using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace CSharksWebshop.Test
{
    class DummyIdentity : IIdentity
    {
        public string Name => "Dummy User";

        public string AuthenticationType => "Dummy";

        public bool IsAuthenticated => false;
    }
}
