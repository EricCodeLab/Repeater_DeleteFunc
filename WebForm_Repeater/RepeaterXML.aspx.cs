using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_Repeater
{
    public partial class RepeaterXML : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cdCatalogData = new DataSet();
            cdCatalogData.ReadXml(MapPath("cdcatalog.xml"));
            cdcatalog.DataSource= cdCatalogData;
            cdcatalog.DataBind();
        }
    }
}