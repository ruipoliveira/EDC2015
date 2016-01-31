using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace uastudent_v2.ServicosUA
{
    public partial class SGAUA : System.Web.UI.Page
    {
        string[] lettera, desca, latesta,  wca, datea;
        protected void Button5_Click(object sender, EventArgs e)
        {
            Label2.Text = desca[4].ToString();
            Label3.Text = lettera[4].ToString();
            Label6.Text = datea[4].ToString();
            Label4.Text = latesta[4].ToString();
            Label5.Text = wca[4].ToString();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label2.Text = desca[5].ToString();
            Label3.Text = lettera[5].ToString();
            Label6.Text = datea[5].ToString();
            Label4.Text = latesta[5].ToString();
            Label5.Text = wca[5].ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label2.Text = desca[3].ToString();
            Label3.Text = lettera[3].ToString();
            Label6.Text = datea[3].ToString();
            Label4.Text = latesta[3].ToString();
            Label5.Text = wca[3].ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Text = desca[2].ToString();
            Label3.Text = lettera[2].ToString();
            Label6.Text = datea[2].ToString();
            Label4.Text = latesta[2].ToString();
            Label5.Text = wca[2].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = desca[1].ToString();
            Label3.Text = lettera[1].ToString();
            Label6.Text = datea[1].ToString();
            Label4.Text = latesta[1].ToString();
            Label5.Text = wca[1].ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            String projectPath = AppDomain.CurrentDomain.BaseDirectory;
            XmlDocument xdoc = new XmlDocument();

            xdoc.Load("http://services.web.ua.pt/sac/senhas");

            xdoc.Save(projectPath + "/ServicosUA/senhas.xml");

            XDocument doc = XDocument.Load(projectPath + @"\ServicosUA\senhas.xml");
            string letters = "";  string descs ="";string latests = "";string wcs=""; string dates= "";

                var letter = doc.Descendants("letter");
                var desc = doc.Descendants("desc");
                var latest = doc.Descendants("latest");
                var wc = doc.Descendants("wc");
                var date = doc.Descendants("date");


                foreach (var letter1 in letter)
                    letters += letter1 + "!";
                foreach (var desc1 in desc)
                descs += desc1 + "!";
            foreach (var latest1 in latest)
                latests += latest1 + "!";
            foreach (var wc1 in wc)
                wcs += wc1 + "!";
            foreach (var date1 in date)
                dates += date1 + "!";

            //"< center >< div class=\"panel panel-primary\" style=\"width:60%\"><div class=\"panel-heading\"><h3 class=\"panel-title\"> ------- </h3> </div><div class=\"panel-body\"><div class=\"row row-centered\"><div class=\"text-center col-md-4\" ><font size = \"17\" >< h1 class=\"label label-success\">A</h1></font><h6>16:47:52</h6></div> <div class=\"text-center col-md-4\"><b><font size = \"17\" > 17 / 212 </ font ></ b >< h6 > Senha atual/Senhas em espera</h6></div><div class=\"text-center col-md-4\"><th><i class=\"fa fa-graduation-cap fa-5x\"></i></th></div></div></div></div></center>"; 

            lettera = letters.Split('!');
            desca = descs.Split('!');
            latesta = latests.Split('!');
            wca = wcs.Split('!');
            datea = dates.Split('!');

            Label2.Text = desca[0].ToString();
            Label3.Text = lettera[0].ToString();
            Label6.Text = datea[0].ToString();
            Label4.Text = latesta[0].ToString();
            Label5.Text = wca[0].ToString();

            if (desca.Length == 1)
            {
                Button2.Enabled = false;
                Button3.Enabled = false;
                Button4.Enabled = false;
                Button5.Enabled = false;
                Button6.Enabled = false;
            }
            if (desca.Length == 2)
            {
                Button2.Enabled = false;
                Button3.Enabled = false;
                Button4.Enabled = false;
                Button5.Enabled = false;
                Button6.Enabled = false;
            }
            if (desca.Length == 3)
            {
                Button3.Enabled = false;
                Button4.Enabled = false;
                Button5.Enabled = false;
                Button6.Enabled = false;
            }
            if (desca.Length == 4)
            {
                Button4.Enabled = false;
                Button5.Enabled = false;
                Button6.Enabled = false;
            }
            if (desca.Length == 5)
            {
                Button5.Enabled = false;
                Button6.Enabled = false;
            }
            //System.Diagnostics.Debug.WriteLine("\n##################################################\n"); 

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = desca[0].ToString();
            Label3.Text = lettera[0].ToString();
            Label6.Text = datea[0].ToString();
            Label4.Text = latesta[0].ToString();
            Label5.Text = wca[0].ToString();
        }
    }
}