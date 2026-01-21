using System.Web;
using System.Web.Mvc;

namespace CC9_MVC_Prj_2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
