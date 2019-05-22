using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.SessionState;

namespace CSharksWebshop.Test
{
    class DummySession: HttpSessionStateBase
    {
        private string mySessionID = null;
        public DummySession(string mySessionID)
        {
            this.mySessionID = mySessionID;
        }
        public override string SessionID
        {
            get
            {
                return this.mySessionID;
            }
        }
    }
}
