using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDC2015T1
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    var id = Request.QueryString["ID"];
          //  System.Diagnostics.Debug.WriteLine(id);
            XmlDataSource1.DataFile = String.Format("http://acesso.ua.pt/xml/curso.asp?i={0}", Request.QueryString["ID"]);
        }

    }
}