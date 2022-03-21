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
        //DeleteCommand="DELETE FROM [services] WHERE [ID] = @ID" 
        //InsertCommand="INSERT INTO [services] ([Title], [Description], [Status]) VALUES (@Title, @Description, @Status)" \
        //ProviderName="<%$ ConnectionStrings:usersConnectionString1.ProviderName %>" 
        //SelectCommand="SELECT [ID], [Title], [Description], [Status] FROM [services]" 
        //UpdateCommand="UPDATE [services] SET [Title] = @Title, [Description] = @Description, [Status] = @Status WHERE [ID] = @ID">
        Print();
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [ServiceID], [Title], [Description], [Status] FROM [services]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Submit")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [services] ([Title], [Description], [Status]) VALUES (@Title, @Description, @Status)", con);
            cmd.Parameters.AddWithValue("@Title", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Description", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", RadioButtonList1.SelectedItem.Value.Trim());
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Print();
                Literal5.Text = "Service Information Successfully Inserted!";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Print();
                Literal5.Text = "Error!";
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("UPDATE [services] SET [Title] = @Title, [Description] = @Description, [Status] = @Status WHERE [ServiceID] = @ServiceID", con);
            cmd.Parameters.AddWithValue("@Title", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Description", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", RadioButtonList1.SelectedItem.Value.Trim());
            cmd.Parameters.AddWithValue("@ServiceID", ViewState["service_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Print();
                Button1.Text = "Submit";
                Literal5.Text = "Service Information Successfully Updated!";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Button1.Text = "Submit";
                Print();
                Literal5.Text = "Error!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [services] WHERE [ServiceID] = @ServiceID", con);
        cmd.Parameters.AddWithValue("@Service", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal5.Text = "Service Information Successfully Deleted!";
            Print();
        }
        else
        {
            Literal5.Text = "Error!";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [ServiceID], [Title], [Description], [Status] FROM [services]  WHERE [ServiceID] =" + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        RadioButtonList1.SelectedValue = dt.Rows[0][3].ToString();
        ViewState["service_id"] = btn.CommandArgument;
        Button1.Text = "Update";
    }
}