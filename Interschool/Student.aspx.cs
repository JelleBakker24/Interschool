using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Interschool
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LinkButton lbInsert = new LinkButton();
            //lbInsert.Click += new EventHandler(lbInsert_Click);

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Voornaam"].DefaultValue =
                ((TextBox)StudentGrid.FooterRow.FindControl("TXTVoornaam")).Text;

            SqlDataSource1.InsertParameters["Achternaam"].DefaultValue =
                ((TextBox)StudentGrid.FooterRow.FindControl("TXTAchternaam")).Text;
        }
    }
}