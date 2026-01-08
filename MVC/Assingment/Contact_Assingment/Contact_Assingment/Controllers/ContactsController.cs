using Contact_Assingment.Models;
using Contact_Assingment.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Contact_Assingment.Controllers
{
    public class ContactsController : Controller
    {
        private IContactRepository repository = new ContactRepository();

        // GET: Contacts
        public async Task<ActionResult> Index()
        {
            var contacts = await repository.GetAllAsync();
            return View(contacts);
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(Contact contact)
        {
            if (ModelState.IsValid)
            {
                await repository.CreateAsync(contact);
                return RedirectToAction("Index");
            }
            return View(contact);
        }
        public async Task<ActionResult> Delete(long id)
        {
            await repository.DeleteAsync(id);
            return RedirectToAction("Index");
        }


    }
}