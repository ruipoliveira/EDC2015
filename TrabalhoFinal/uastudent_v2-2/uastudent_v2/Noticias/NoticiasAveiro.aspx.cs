using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace uastudent_v2.Noticias
{
    public partial class NoticiasAveiro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlDataSource3.DataFile = "http://recortes.pt/Info/RSS/1";
            ListView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            XmlDataSource3.DataFile = "http://www.noticiasdeaveiro.pt/rss/actualidades.aspx?idioma=pt&idcont=37";
            ListView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            XmlDataSource3.DataFile = "http://www.jn.pt/RSS/rss.aspx?Feed=Aveiro&Source=Pais";
            ListView1.DataBind();
        }
    }
}