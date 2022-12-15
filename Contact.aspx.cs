using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace test
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                this.FillDropDownListKlub();
                this.FillDropDownListPozicija();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(Connection.conString))
            {
                conn.Open();
                string insert = "INSERT INTO Igrac VALUES(@Ime,@Prezime,@Godine,@Pozicija,@KlubID)";

                using (SqlCommand cmd = new SqlCommand(insert,conn))
                {
                    cmd.Parameters.AddWithValue("@Ime", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Prezime", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Godine", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Pozicija", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@KlubID", DropDownList2.SelectedValue);

                    cmd.ExecuteNonQuery();
                }
            }
        }
        private void FillDropDownListPozicija()
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Selektujte poziciju igraca");
            using (SqlConnection con = new SqlConnection(Connection.conString))
            {
                con.Open();
                string selectKlub = "select distinct Pozicija from Igrac";
                using (SqlCommand cmd = new SqlCommand(selectKlub, con))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ListItem item = new ListItem();
                        item.Text = reader["Pozicija"].ToString();
                        item.Value = reader["Pozicija"].ToString();
                        DropDownList1.Items.Add(item);
                    }
                    reader.Close();
                }
            }
        }
        private void FillDropDownListKlub()
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Selektujte klub");
            using (SqlConnection con = new SqlConnection(Connection.conString))
            {
                con.Open();
                string selectKlub = "select Naziv,KlubID from Klub";
                using (SqlCommand cmd = new SqlCommand(selectKlub, con))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ListItem item = new ListItem();
                        item.Text = reader["Naziv"].ToString();
                        item.Value = reader["KlubID"].ToString();
                        DropDownList2.Items.Add(item);
                    }
                    reader.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
        }
    }
}