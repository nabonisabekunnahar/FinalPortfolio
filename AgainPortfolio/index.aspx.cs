using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AgainPortfolio
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
                // string ss = "data source= . ;database=TestDB;Integrated Security=true";
                //SqlConnection con = new SqlConnection(ss);
                SqlConnection connection = new SqlConnection("Data Source=LAPTOP-8SUGBH35\\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=True");

                using (connection)
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("SELECT SkillName, SkillPercentage FROM Frontend", connection))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        SkillsRepeater.DataSource = dt;
                        SkillsRepeater.DataBind();
                    }

                    connection.Close();

                }

                SqlConnection connection1 = new SqlConnection("Data Source=LAPTOP-8SUGBH35\\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=True");
                using (connection1)
                {
                    connection1.Open();
                    using (SqlCommand command = new SqlCommand("SELECT LanguageName, LanguagePercentage FROM ProgrammingLanguage", connection1))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        ProgrammingLanguageRepeater.DataSource = dt;
                        ProgrammingLanguageRepeater.DataBind();
                    }

                    connection1.Close();
                }

                SqlConnection connection2 = new SqlConnection("Data Source=LAPTOP-8SUGBH35\\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=True");

                using (connection2)
                {
                    connection2.Open();

                    using (SqlCommand command = new SqlCommand("SELECT Name, Work, Age, Phone, Email, Address, Github, LinkedIn, Facebook FROM HomeList", connection2))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        HomeListRepeater.DataSource = dt;
                        HomeListRepeater.DataBind();
                    }

                    connection2.Close();
                }

                SqlConnection connection3 = new SqlConnection("Data Source=LAPTOP-8SUGBH35\\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=True");

                using (connection3)
                {
                    connection3.Open();

                    using (SqlCommand command = new SqlCommand("SELECT Subtitle, Data, Description FROM Education", connection3))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        EducationRepeater.DataSource = dt;
                        EducationRepeater.DataBind();
                    }

                    using (SqlCommand command = new SqlCommand("SELECT Subtitle, Data, Description FROM BeyondClassroom", connection3))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        BeyondClassroomRepeater.DataSource = dt;
                        BeyondClassroomRepeater.DataBind();
                    }

                    connection3.Close();
                }

                SqlConnection connection4 = new SqlConnection("Data Source=LAPTOP-8SUGBH35\\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=True");

                using (connection4)
                {
                    connection4.Open();

                    using (SqlCommand command = new SqlCommand("SELECT ImageName, Title, Detail FROM ServicesSection", connection4))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        ServicesSectionRepeater.DataSource = dt;
                        ServicesSectionRepeater.DataBind();
                    }

                    connection4.Close();
                }

                SqlConnection connection5 = new SqlConnection("Data Source=LAPTOP-8SUGBH35\\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=True");

                using (connection5)
                {
                    connection5.Open();

                    using (SqlCommand command = new SqlCommand("SELECT Category,Image,Title,Description,Stack,Link FROM Projects", connection5))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        ProjectRepeater.DataSource = dt;
                        ProjectRepeater.DataBind();
                    }

                    connection5.Close();
                }

            }
        }

        protected void loginB_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}