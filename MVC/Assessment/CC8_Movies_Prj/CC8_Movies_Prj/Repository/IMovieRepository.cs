using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CC8_Movies_Prj.Repository
{
    public interface IMovieRepository<T>
    {
        IEnumerable<T> GetAll();
        void Insert(T obj);
        void Update(T obj);
        void Delete(int id);
        void Save();
    }

}