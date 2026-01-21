using CC9_Web_Prj_2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CC9_Web_Prj_2.Controllers
{
    public class CustomersController : ApiController
    {
        NorthwindEntities1 db = new NorthwindEntities1();

        [HttpGet]
        [Route("api/customers/bycountry/{country}")]
        public IHttpActionResult GetCustomersByCountry(string country)
        {
            var customers = db.GetCustomersByCountry(country);
            return Ok(customers);
        }
    }
}
