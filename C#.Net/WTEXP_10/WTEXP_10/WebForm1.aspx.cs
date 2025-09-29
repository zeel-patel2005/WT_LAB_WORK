using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTEXP_10
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnXmlCache_Click(object sender, EventArgs e)
        {
            string cacheKey = "xmlData";

            if (Cache[cacheKey] == null)
            {
                string filePath = Server.MapPath("~/App_Data/data.xml");

                CacheDependency dependency = new CacheDependency(filePath);

                Cache.Insert(cacheKey, DateTime.Now.ToString(), dependency);

                lblXmlCache.Text = "XML Cache created at: " + Cache[cacheKey];
            }
            else
            {
                lblXmlCache.Text = "XML Cache available: " + Cache[cacheKey];
            }
        }

        // SQL Database Dependency
        protected void btnSqlCache_Click(object sender, EventArgs e)
        {
            string cacheKey = "studentData";

            if (Cache[cacheKey] == null)
            {
                SqlCacheDependency dependency = new SqlCacheDependency("WTEXP_10", "Students");

                string data = "SQL Cache created at " + DateTime.Now.ToString();
                Cache.Insert(cacheKey, data, dependency);

                lblSqlCache.Text = "SQL Cache created: " + data;
            }
            else
            {
                lblSqlCache.Text = "SQL Cache available: " + Cache[cacheKey];
            }
        }
    }
}