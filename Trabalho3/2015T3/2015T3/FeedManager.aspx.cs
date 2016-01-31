using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace _2015T3
{
    public partial class FeedManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Button2.Visible = false;
                Button3.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;

 
            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Button2.Visible = false;
            Button3.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            GridView1.Visible = true;
            Button1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Visible = true;
            Button3.Visible = true;
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;

            GridView1.Visible = false;
            Button1.Visible = false; 

            TextBox1.Text = "";
            TextBox2.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();


            XmlElement site = xdoc.CreateElement("site");
            XmlAttribute description = xdoc.CreateAttribute("description");
            XmlAttribute url = xdoc.CreateAttribute("url");

            description.Value = TextBox1.Text;
            url.Value = TextBox2.Text;

            site.Attributes.Append(description);
            site.Attributes.Append(url);

            xdoc.DocumentElement.AppendChild(site);
            XmlDataSource1.Save();

            GridView1.DataBind();

            Button2.Visible = false;
            Button3.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            GridView1.Visible = true;
            Button1.Visible = true;


        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            foreach (XmlElement site in xdoc.SelectNodes("sites/site[@url=\"" + GridView1.Rows[e.RowIndex].Cells[1].Text + "\"]"))
            {
                xdoc.DocumentElement.RemoveChild(site);
            }

            XmlDataSource1.Save();

            e.Cancel = true;

            GridView1.DataBind();
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            int i = 0;
            foreach (XmlElement site in xdoc.SelectNodes("sites/site"))
            {
                if (i == e.RowIndex)
                {
                    site.Attributes[1].InnerText = e.NewValues[0].ToString();
                    break;
                }

                i++;
            }

            XmlDataSource1.Save();

            e.Cancel = true;

            GridView1.DataBind();

            GridView1.EditIndex = -1;
        }


    
    }
}