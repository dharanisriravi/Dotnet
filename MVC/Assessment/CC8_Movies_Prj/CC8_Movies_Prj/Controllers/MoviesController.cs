using System.Linq;
using System.Web.Mvc;
using CC8_Movies_Prj.Models;
using CC8_Movies_Prj.Repository;

namespace CC8_Movies_Prj.Controllers
{
    public class MoviesController : Controller
    {
        IMovieRepository<Movies> _movieRepo = null;

        public MoviesController()
        {
            _movieRepo = new MovieRepository<Movies>();
        }

        // --- Movies by Year ---
        public ActionResult MoviesByYear()
        {
            return View();
        }

        [HttpPost]
        public ActionResult MoviesByYear(int? year)
        {
            if (year == null)
            {
                ViewBag.Message = "Please enter a year.";
                return View();
            }

            var movies = _movieRepo.GetAll()
                        .Where(m => m.DateofRelease.Year == year.Value)
                        .ToList();

            ViewBag.Year = year;
            return View(movies);
        }

        // --- Movies by Director ---
        public ActionResult MoviesByDirector()
        {
            return View();
        }

        [HttpPost]
        public ActionResult MoviesByDirector(string directorName)
        {
            if (string.IsNullOrEmpty(directorName))
            {
                ViewBag.Message = "Please enter a director name.";
                return View();
            }

            var movies = _movieRepo.GetAll()
                        .Where(m => m.DirectorName == directorName)
                        .ToList();

            ViewBag.Director = directorName;
            return View(movies);
        }
    }
}
