using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace test
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                this.FillDropDownList();
            }
        }
        private void FillDropDownList()
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Selektujte grad");
            using (SqlConnection con = new SqlConnection(Connection.conString))
            {
                con.Open();
                string selectKlub = "select distinct Grad from Klub order by Grad";
                using (SqlCommand cmd = new SqlCommand(selectKlub, con))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ListItem item = new ListItem();
                        item.Text = reader["Grad"].ToString();
                        item.Value = reader["Grad"].ToString();
                        DropDownList1.Items.Add(item);
                    }
                    reader.Close();
                }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(Connection.conString))
            {
                conn.Open();
                string cmdSelect = "Select Naziv,Stadion,GodinaOsnivanja from Klub where Grad = @grad";
                using (SqlCommand cmd = new SqlCommand(cmdSelect, conn))
                {
                    cmd.Parameters.AddWithValue("@grad", DropDownList1.SelectedItem.Value);
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }

                    }
                }
            }
        }
    }
}