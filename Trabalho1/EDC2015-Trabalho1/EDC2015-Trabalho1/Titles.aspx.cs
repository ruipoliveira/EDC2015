using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace EDC2015_Trabalho1
{
    public partial class Titles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
            System.Diagnostics.Debug.WriteLine(GridView1.SelectedValue);

            String strTitleId = GridView1.SelectedValue.ToString();

            SqlDataSource3.SelectCommand = "SELECT * FROM [titles] WHERE title_id='"+strTitleId+"'";
            DetailsView1.DataBind();
            */
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String strType = DropDownList1.SelectedValue.ToString();
            SqlDataSource3.SelectCommand = "SELECT TOP 1 * FROM [titles] WHERE type='" + strType + "'";
            DetailsView1.DataBind();
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }
    }
}