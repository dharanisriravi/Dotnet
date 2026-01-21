using CC9_Web_Prj_2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CC9_Web_Prj_2.Controllers
{
    public class OrdersController : ApiController
    {
        NorthwindEntities1 db = new NorthwindEntities1();
        [HttpGet]
        [Route("api/orders/buchanan")]
        public IHttpActionResult GetOrdersByBuchanan()
        {
            var orders = db.Orders.Where(o => o.EmployeeID == 5)
                .Select(o => new
                {
                    o.OrderID,
                    o.OrderDate,
                    o.ShipName,
                    o.ShipCountry
                }).ToList();

            return Ok(orders);
        }
    }
}
