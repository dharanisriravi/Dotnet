using CC8_Movies_Prj.Models;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;

namespace CC8_Movies_Prj.Repository
{
    public class MovieRepository<T> : IMovieRepository<T> where T : Movies
    {
        MovieContext db = new MovieContext();

        public IEnumerable<T> GetAll()
        {
            return db.Movies.ToList() as IEnumerable<T>;
        }

        public void Insert(T obj)
        {
            db.Movies.Add(obj);
        }

        public void Update(T obj)
        {
            db.Entry(obj).State = EntityState.Modified;
        }

        public void Delete(int id)
        {
            var movie = db.Movies.Find(id);
            db.Movies.Remove(movie);
        }

        public void Save()
        {
            db.SaveChanges();
        }
    }
}
