using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CC8_Movies_Prj.Models
{
    public class MovieContext : DbContext
    {
        public MovieContext() : base("name=connectstr") { }

        public DbSet<Movies> Movies { get; set; }
    }
}