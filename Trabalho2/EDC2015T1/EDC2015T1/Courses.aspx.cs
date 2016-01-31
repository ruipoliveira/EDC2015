using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDC2015T1
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(listaDeGraus.SelectedIndex==-1 && listaDeLocais.SelectedIndex == -1)
            {
                XmlDataSource1.XPath = "/cursos/curso[ @Grau='Licenciatura' and @Local='Campus Universitário de Santiago, Aveiro']";
                listaDeGraus.SelectedIndex = 0;
                listaDeLocais.SelectedIndex = 0;
            }
            string local = listaDeLocais.SelectedValue;
            string grau = listaDeGraus.SelectedValue;
            //XmlDataSource1.XPath = "/cursos/curso[ @Grau='Licenciatura' and @Local='Campus Universitário de Santiago, Aveiro']";


        }

        protected void listaDeGraus_SelectedIndexChanged(object sender, EventArgs e) {
          //  System.Diagnostics.Debug.WriteLine(listaDeGraus.SelectedValue);
            //XmlDataSource1.XPath = "cursos/curso[@grau='" + listaDeGraus.SelectedValue + "' && @local='" + listaDeLocais.SelectedValue + "']";
            //XmlDataSource1.XPath = "cursos/curso[ @grau='" + listaDeGraus.SelectedValue + "']";
            //GridView1.DataBind();
            if (listaDeGraus.SelectedIndex == -1 && listaDeLocais.SelectedIndex == -1)
            {
                XmlDataSource1.XPath = "/cursos/curso[ @Grau='Licenciatura' and @Local='Campus Universitário de Santiago, Aveiro']";
                listaDeGraus.SelectedIndex = 0;
                listaDeLocais.SelectedIndex = 0;
            }
            string grau = listaDeGraus.SelectedValue;
            string local = listaDeLocais.SelectedValue;
            XmlDataSource1.XPath = "/cursos/curso[ @Grau='" + grau + "' and @Local='" + local + "']";

            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
            {
                GridView2.Visible = true;

            }
            else
            {
                GridView2.Visible = false;

            }

            listaDeGraus.SelectedValue = grau;
            listaDeLocais.SelectedValue = local;
            XmlDataSource1.XPath = "/cursos/curso[ @Grau='" + grau + "' and @Local='" + local + "']";

        }
        protected void listaDeLocais_SelectedIndexChanged(object sender, EventArgs e)
        {
            string local = listaDeLocais.SelectedValue;
            string grau = listaDeGraus.SelectedValue;
            XmlDataSource1.XPath = "/cursos/curso[ @Grau='" + grau + "' and @Local='" + local + "']";

            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
            {
                GridView2.Visible = true;

            }
            else
            {
                GridView2.Visible = false;
            }


            listaDeGraus.SelectedValue = grau;
            listaDeLocais.SelectedValue = local;
            XmlDataSource1.XPath = "/cursos/curso[ @Grau='" + grau + "' and @Local='" + local + "']";


        }

        protected void listaDeGraus_DataBound(object sender, EventArgs e)
        {
            //XmlDataSource1.XPath = "/cursos/curso[grau='Licenciatura']";
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            string local = listaDeLocais.SelectedValue;
            string grau = listaDeGraus.SelectedValue;
            XmlDataSource1.XPath = "/cursos/curso[ @Grau='" + grau + "' and @Local='" + local + "']";
        }

        protected void Label1_DataBinding(object sender, EventArgs e)
        {

            DataBind(); 
            if (GridView1.Rows.Count == 0)
            {
                System.Diagnostics.Debug.WriteLine("ZERRO!!");

            }
        }
    }
}