using CC8_MVC_Prj.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CC8_MVC_Prj.Controllers
{
    public class CodeController : Controller
    {
        // GET: Code
        public ActionResult Index()
        {
            return View();
        }

        NorthwindEntities db = new NorthwindEntities();

        public ActionResult GermanyCustomers()
        {
            var data = db.Customers
                         .Where(c => c.Country == "Germany")
                         .ToList();
            return View(data);
        }

        public ActionResult CustomerOrder()
        {
            var data = db.Orders
                         .Where(o => o.OrderID == 10248)
                         .Select(o => o.Customer)
                         .ToList();
            return View(data);
        }
    }
}