using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Benci_Magpoc_Formstack_Application
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //initiating connection string at local SQL server
            String connectionstring = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = master; Integrated Security = True; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False;";

            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDA = new SqlDataAdapter("SELECT * FROM Form", sqlCon);
                DataTable dataTable = new DataTable();
                sqlDA.Fill(dataTable);
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }

            //applying CSS class Mouseover to rows highlighted
            foreach (GridViewRow row in GridView1.Rows)
            {
                row.CssClass = "Mouseover";
            }
        }
                
    }
}