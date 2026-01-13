using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CC8_Movies_Prj.Models
{
    [Table("Movies")]
    public class Movies
    {
        [Key]
        public int Mid { get; set; }
        public string Moviename { get; set; }
        public string DirectorName { get; set; }
        public DateTime DateofRelease { get; set; }
    }
}