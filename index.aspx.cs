using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ToDO
{
    public partial class index : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security = True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("addItem.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from ToDo where title =@title ", con);
            cmd.Parameters.AddWithValue("@title", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            Response.Redirect("index.aspx");
        }  
    }
}