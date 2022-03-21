using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["usersConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        //ConnectionString="<%$ ConnectionStrings:usersConnectionString1 %>" 
        //DeleteCommand="DELETE FROM [contacts] WHERE [ContactID] = @ContactID" 
        //InsertCommand="INSERT INTO [contacts] ([fname], [lname], [email], [phone], [message]) VALUES (@fname, @lname, @email, @phone, @message)" 
        //ProviderName="<%$ ConnectionStrings:usersConnectionString1.ProviderName %>" 
        //SelectCommand="SELECT [ContactID], [fname], [lname], [email], [phone], [message] FROM [contacts]" \
        //UpdateCommand="UPDATE [contacts] SET [fname] = @fname, [lname] = @lname, [email] = @email, [phone] = @phone, [message] = @message WHERE [ContactID] = @ContactID">
        Print();
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [ContactID], [fname], [lname], [email], [phone], [message] FROM [contacts]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Submit")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [contacts] ([fname], [lname], [email], [phone], [message]) VALUES (@fname, @lname, @email, @phone, @message)", con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@phone", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@message", TextBox5.Text.Trim());
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                Print();
                Literal1.Text = "Registration successfully completed!";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                Print();
                Literal1.Text = "Error!";
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("UPDATE [contacts] SET [fname] = @fname, [lname] = @lname, [email] = @email, [phone] = @phone, [message] = @message WHERE [ContactID] = @ContactID", con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@phone", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@message", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@id", ViewState["contact_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                Print();
                Button1.Text = "Submit";
                Literal1.Text = "User updated successfully!";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                Button1.Text = "Submit";
                Print();
                Literal1.Text = "Error!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [contacts] WHERE [ContactID] = @ContactID", con);
        cmd.Parameters.AddWithValue("@ContactID", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal1.Text = "User deleted successfully!";
            Print();
        }
        else
        {
            Literal1.Text = "Error!";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [ContactID], [fname], [lname], [email], [phone], [message] FROM [contacts]  WHERE [ContactID] =" + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        TextBox3.Text = dt.Rows[0][3].ToString();
        TextBox2.Text = dt.Rows[0][4].ToString();
        TextBox3.Text = dt.Rows[0][5].ToString();
        ViewState["contact_id"] = btn.CommandArgument;
        Button1.Text = "Update";
    }
}