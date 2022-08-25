using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.BusinessLogic.Exceptions
{
    public class RezervacijaException : Exception
    {
        public RezervacijaException()
        {
        }

        public RezervacijaException(string message) : base(message)
        {
        }

        public RezervacijaException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected RezervacijaException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}
