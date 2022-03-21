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
        //                        DeleteCommand="DELETE FROM [categories] WHERE [CategoryID] = @CategoryID" 
        //                        InsertCommand="INSERT INTO [categories] ([CategoryName], [Status]) VALUES (@CategoryName, @Status)" 
        //                        ProviderName="<%$ ConnectionStrings:usersConnectionString1.ProviderName %>" 
        //                        SelectCommand="SELECT [CategoryID], [CategoryName], [Status] FROM [categories]" 
        //                        UpdateCommand="UPDATE [categories] SET [CategoryName] = @CategoryName, [Status] = @Status WHERE [CategoryID] = @CategoryID">
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [CategoryID], [CategoryName], [Status] FROM [categories]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Submit")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [categories] ([CategoryName], [Status]) VALUES (@CategoryName,@Status)", con);
            cmd.Parameters.AddWithValue("@CategoryName", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", RadioButtonList1.SelectedItem.Value.Trim());
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Print();
                Literal5.Text = "Category Information Successfully Inserted!";
            }
            else
            {
                TextBox1.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Print();
                Literal5.Text = "Error!";
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("UPDATE [categories] SET [CategoryName] = @CategoryName, [Status] = @Status WHERE [CategoryID] = @CategoryID", con);
            cmd.Parameters.AddWithValue("@CategoryName", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", RadioButtonList1.SelectedItem.Value.Trim());
            cmd.Parameters.AddWithValue("@categoryID", ViewState["category_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Print();
                Button1.Text = "Submit";
                Literal5.Text = "category Information Successfully Updated!";
            }
            else
            {
                TextBox1.Text = string.Empty;
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
        SqlCommand cmd = new SqlCommand("DELETE FROM [categories] WHERE [CategoryID] = @CategoryID", con);
        cmd.Parameters.AddWithValue("@CategoryID", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal5.Text = "Category Information Successfully Deleted!";
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
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [CategoryID], [CategoryName], [Status] FROM [categories]  WHERE [CategoryID] =" + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        RadioButtonList1.SelectedValue = dt.Rows[0][2].ToString();
        ViewState["category_id"] = btn.CommandArgument;
        Button1.Text = "Update";
    }
}