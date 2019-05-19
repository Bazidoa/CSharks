using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharksWebshop.Test
{
    class MissingProductException : Exception
    {
        public MissingProductException()
        {
        }

        public MissingProductException(string message) : base(message)
        {
        }

        public MissingProductException(string message, Exception innerException) : base(message, innerException)
        {
        }
    }
}

