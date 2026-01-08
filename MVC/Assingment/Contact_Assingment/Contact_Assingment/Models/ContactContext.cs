using Contact_Assingment.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Contact_Assingment.Models
{
    
        public class ContactContext : DbContext
        {
            public ContactContext() : base("name=connectstr") { }

            public DbSet<Contact> Contacts { get; set; }
        }
   }
