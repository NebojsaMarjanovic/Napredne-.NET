using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.BusinessLogic.Exceptions
{
    public class GradException : Exception
    {
        public GradException()
        {
        }

        public GradException(string message) : base(message)
        {
        }

        public GradException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected GradException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}
