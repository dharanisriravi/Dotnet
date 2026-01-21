using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using CC9_Prj_1.Models;

namespace Question_1.Controllers
{
    public class CountryController : ApiController
    {
        static List<Country> countries = new List<Country>()
        {
          new Country{ ID = 1, CountryName = "India", Capital = "New Delhi"},
         new Country{ ID = 2, CountryName = "Canada", Capital = "Ottawa"},
          new Country{ ID = 3, CountryName = "Japan", Capital = "Tokyo"},
          new Country{ ID = 4, CountryName = "South Korea", Capital = "Seoul"},
        new Country{ ID = 5, CountryName = "Malaysia", Capital = "Kuala Lumpur"}
        };


        public IHttpActionResult Get()
        {
            return Ok(countries);
        }


        public IHttpActionResult Get(int id)
        {
            var country = countries.FirstOrDefault(c => c.ID == id);
            if (country == null)
                return NotFound();

            return Ok(country);
        }


        public IHttpActionResult Post(Country country)
        {
            countries.Add(country);
            return Ok("Country Added");
        }

        public IHttpActionResult Put(int id, Country country)
        {
            var existing = countries.FirstOrDefault(c => c.ID == id);
            if (existing == null)
                return NotFound();

            existing.CountryName = country.CountryName;
            existing.Capital = country.Capital;

            return Ok("Country Updated");
        }


        public IHttpActionResult Delete(int id)
        {
            var country = countries.FirstOrDefault(c => c.ID == id);
            if (country == null)
                return NotFound();

            countries.Remove(country);
            return Ok("Country Deleted");
        }
    }
}
