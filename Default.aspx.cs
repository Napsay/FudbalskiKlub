using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace test
{
    public partial class _Default : Page
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
            ddlKlub.Items.Clear();
            ddlKlub.Items.Add("Selektujte klub");
            using (SqlConnection con = new SqlConnection(Connection.conString))
            {
                con.Open();
                string selectKlub = "select Naziv,KlubID from Klub";
                using (SqlCommand cmd = new SqlCommand(selectKlub,con))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while(reader.Read())
                    {
                        ListItem item = new ListItem();
                        item.Text = reader["Naziv"].ToString();
                        item.Value = reader["KlubID"].ToString();
                        ddlKlub.Items.Add(item);
                    }
                    reader.Close();
                }
            }
        }

        
        protected void ddlKlub_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(Connection.conString))
            {
                try
                {
                    conn.Open();
                    string SelectCMD = "SELECT Ime,Prezime,Godine,Pozicija from Igrac where KlubID = @id";
                    using (SqlCommand cmd = new SqlCommand(SelectCMD,conn))
                    {
                        cmd.Parameters.AddWithValue("@id", ddlKlub.SelectedItem.Value);
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
                catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}