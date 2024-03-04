using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace AgainPortfolio
{
    public partial class admin : System.Web.UI.Page
    {

        string connectionString = @"Data Source= LAPTOP-8SUGBH35\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                PopulateGridview();
                PopulateFrontend();
                PopulateHomeList();
                PopulateEducation();
                PopulateBeyondClassroom();
                PopulateServicesSection();
                PopulateProjects();
            }

            if (Session["username"] == null)
                Response.Redirect("login.aspx");
               lblUserDetails.Text = "Admin : " + Session["username"];
        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM ProgrammingLanguage", sqlcon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GvProgrammingLanguage.DataSource = dtbl;
                GvProgrammingLanguage.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GvProgrammingLanguage.DataSource = dtbl;
                GvProgrammingLanguage.DataBind();
                GvProgrammingLanguage.Rows[0].Cells.Clear();
                GvProgrammingLanguage.Rows[0].Cells.Add(new TableCell());
                GvProgrammingLanguage.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GvProgrammingLanguage.Rows[0].Cells[0].Text = "No Data Found...";
                GvProgrammingLanguage.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
        }

        void PopulateFrontend()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Frontend", sqlcon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GvFrontend.DataSource = dtbl;
                GvFrontend.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GvFrontend.DataSource = dtbl;
                GvFrontend.DataBind();
                GvFrontend.Rows[0].Cells.Clear();
                GvFrontend.Rows[0].Cells.Add(new TableCell());
                GvFrontend.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GvFrontend.Rows[0].Cells[0].Text = "No Data Found...";
                GvFrontend.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
        }

        void PopulateHomeList()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM HomeList", sqlcon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GvHomeList.DataSource = dtbl;
                GvHomeList.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GvHomeList.DataSource = dtbl;
                GvHomeList.DataBind();
                GvHomeList.Rows[0].Cells.Clear();
                GvHomeList.Rows[0].Cells.Add(new TableCell());
                GvHomeList.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GvHomeList.Rows[0].Cells[0].Text = "No Data Found...";
                GvHomeList.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
        }

        void PopulateEducation()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Education", sqlcon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GvEducation.DataSource = dtbl;
                GvEducation.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GvEducation.DataSource = dtbl;
                GvEducation.DataBind();
                GvEducation.Rows[0].Cells.Clear();
                GvEducation.Rows[0].Cells.Add(new TableCell());
                GvEducation.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GvEducation.Rows[0].Cells[0].Text = "No Data Found...";
                GvEducation.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
        }

        void PopulateBeyondClassroom()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM BeyondClassroom", sqlcon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GvBeyondClassroom.DataSource = dtbl;
                GvBeyondClassroom.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GvBeyondClassroom.DataSource = dtbl;
                GvBeyondClassroom.DataBind();
                GvBeyondClassroom.Rows[0].Cells.Clear();
                GvBeyondClassroom.Rows[0].Cells.Add(new TableCell());
                GvBeyondClassroom.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GvBeyondClassroom.Rows[0].Cells[0].Text = "No Data Found...";
                GvBeyondClassroom.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
        }

        void PopulateServicesSection()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM ServicesSection", sqlcon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GvServicesSection.DataSource = dtbl;
                GvServicesSection.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GvServicesSection.DataSource = dtbl;
                GvServicesSection.DataBind();
                GvServicesSection.Rows[0].Cells.Clear();
                GvServicesSection.Rows[0].Cells.Add(new TableCell());
                GvServicesSection.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GvServicesSection.Rows[0].Cells[0].Text = "No Data Found...";
                GvServicesSection.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
        }

        void PopulateProjects()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Projects", sqlcon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GvProjects.DataSource = dtbl;
                GvProjects.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GvProjects.DataSource = dtbl;
                GvProjects.DataBind();
                GvProjects.Rows[0].Cells.Clear();
                GvProjects.Rows[0].Cells.Add(new TableCell());
                GvProjects.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GvProjects.Rows[0].Cells[0].Text = "No Data Found...";
                GvProjects.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
        }


        //GvHomeList
        protected void GvHomeList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvHomeList.EditIndex = e.NewEditIndex;
            PopulateHomeList();
        }

        protected void GvHomeList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvHomeList.EditIndex = -1;
            PopulateHomeList();
        }

        protected void GvHomeList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                // Check if the row index is within the valid range
                if (e.RowIndex >= 0 && e.RowIndex < GvHomeList.Rows.Count)
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "UPDATE HomeList SET Name=@Name, Work=@Work, Age=@Age, Phone=@Phone, " +
                                             "Email=@Email, Address=@Address, Github=@Github, LinkedIn=@LinkedIn, Facebook=@Facebook WHERE ID=@id";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        // Get the new values from the GridView row
                        var newName = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtName")).Text.Trim();
                        var newWork = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtWork")).Text.Trim();
                        var newAge = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtAge")).Text.Trim();
                        var newPhone = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtPhone")).Text.Trim();
                        var newEmail = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtEmail")).Text.Trim();
                        var newAddress = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtAddress")).Text.Trim();
                        var newGithub = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtGithub")).Text.Trim();
                        var newLinkedIn = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtLinkedIn")).Text.Trim();
                        var newFacebook = ((TextBox)GvHomeList.Rows[e.RowIndex].FindControl("txtFacebook")).Text.Trim();
                        var id = Convert.ToInt32(GvHomeList.DataKeys[e.RowIndex].Value.ToString());

                        // Add parameters to the SQL command
                        sqlCmd.Parameters.AddWithValue("@Name", newName);
                        sqlCmd.Parameters.AddWithValue("@Work", newWork);
                        sqlCmd.Parameters.AddWithValue("@Age", newAge);
                        sqlCmd.Parameters.AddWithValue("@Phone", newPhone);
                        sqlCmd.Parameters.AddWithValue("@Email", newEmail);
                        sqlCmd.Parameters.AddWithValue("@Address", newAddress);
                        sqlCmd.Parameters.AddWithValue("@Github", newGithub);
                        sqlCmd.Parameters.AddWithValue("@LinkedIn", newLinkedIn);
                        sqlCmd.Parameters.AddWithValue("@Facebook", newFacebook);
                        sqlCmd.Parameters.AddWithValue("@id", id);

                        sqlCmd.ExecuteNonQuery();
                        GvHomeList.EditIndex = -1; // Exit edit mode
                        PopulateHomeList(); // Assuming this method repopulates the GridView
                        lblSuccessMessage2.Text = "Record Updated";
                        lblErrorMessage2.Text = "";
                    }
                }
                else
                {
                    lblSuccessMessage2.Text = "";
                    lblErrorMessage2.Text = "Row index is out of range.";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage2.Text = "";
                lblErrorMessage2.Text = ex.Message;
            }

        }


        //GvProject
        protected void GvProjects_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "INSERT INTO Projects (Category, Image, Title, Description, Stack, Link)" +
                            " VALUES (@Category, @Image, @Title, @Description, @Stack, @Link)";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@Category", ((TextBox)GvProjects.FooterRow.FindControl("txtCategoryFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Image", ((TextBox)GvProjects.FooterRow.FindControl("txtImageFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Title", ((TextBox)GvProjects.FooterRow.FindControl("txtTitleFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Description", ((TextBox)GvProjects.FooterRow.FindControl("txtDescriptionFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Stack", ((TextBox)GvProjects.FooterRow.FindControl("txtStackFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Link", ((TextBox)GvProjects.FooterRow.FindControl("txtLinkFooter")).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateProjects();
                        lblSuccessMessage6.Text = "New Record Added";
                        lblErrorMessage6.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage6.Text = "";
                lblErrorMessage6.Text = ex.Message;
            }

        }

        protected void GvProjects_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvProjects.EditIndex = e.NewEditIndex;
            PopulateProjects();
        }

        protected void GvProjects_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvProjects.EditIndex = -1;
            PopulateProjects();
        }

        protected void GvProjects_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                if (e.RowIndex >= 0 && e.RowIndex < GvProjects.Rows.Count)
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "UPDATE Projects SET Category=@Category, Image=@Image, Title=@Title, Description=@Description, Stack=@Stack,Link=@Link WHERE ProjectID=@ProjectID";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        // Get the new values from the GridView row
                        var newCategory = ((TextBox)GvProjects.Rows[e.RowIndex].FindControl("txtCategory")).Text.Trim();
                        var newImage = ((TextBox)GvProjects.Rows[e.RowIndex].FindControl("txtImage")).Text.Trim();
                        var newTitle = ((TextBox)GvProjects.Rows[e.RowIndex].FindControl("txtTitle")).Text.Trim();
                        var newDescription = ((TextBox)GvProjects.Rows[e.RowIndex].FindControl("txtDescription")).Text.Trim();
                        var newStack = ((TextBox)GvProjects.Rows[e.RowIndex].FindControl("txtStack")).Text.Trim();
                        var newLink = ((TextBox)GvProjects.Rows[e.RowIndex].FindControl("txtLink")).Text.Trim();
                        var projectID = Convert.ToInt32(GvProjects.DataKeys[e.RowIndex].Value.ToString());

                        // Add parameters to the SQL command
                        sqlCmd.Parameters.AddWithValue("@Category", newCategory);
                        sqlCmd.Parameters.AddWithValue("@Image", newImage);
                        sqlCmd.Parameters.AddWithValue("@Title", newTitle);
                        sqlCmd.Parameters.AddWithValue("@Description", newDescription);
                        sqlCmd.Parameters.AddWithValue("@Stack", newStack);
                        sqlCmd.Parameters.AddWithValue("@Link", newLink);
                        sqlCmd.Parameters.AddWithValue("@ProjectID", projectID);

                        sqlCmd.ExecuteNonQuery();
                        GvProjects.EditIndex = -1;
                        PopulateProjects();
                        lblSuccessMessage6.Text = "Record Updated";
                        lblErrorMessage6.Text = "";
                    }
                }
                else
                {
                    lblSuccessMessage6.Text = "";
                    lblErrorMessage6.Text = "Row index is out of range.";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage6.Text = "";
                lblErrorMessage6.Text = ex.Message;
            }

        }

        protected void GvProjects_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {

                using (var sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    const string query = "DELETE FROM Projects WHERE ProjectID=@Id";
                    var sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GvProjects.DataKeys[e.RowIndex].Value.ToString()));

                    sqlCmd.ExecuteNonQuery();
                    PopulateProjects();
                    lblSuccessMessage6.Text = "Selected Record Deleted";
                    lblErrorMessage6.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage6.Text = "";
                lblErrorMessage6.Text = ex.Message;
            }

        }


        //GvEducation
        protected void GvEducation_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "INSERT INTO Education (Subtitle, Data, Description) VALUES (@Subtitle, @Data, @Description)";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@Subtitle", ((TextBox)GvEducation.FooterRow.FindControl("txtSubtitleFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Data", ((TextBox)GvEducation.FooterRow.FindControl("txtDataFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Description", ((TextBox)GvEducation.FooterRow.FindControl("txtDescriptionFooter")).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateEducation();
                        lblSuccessMessage3.Text = "New Record Added";
                        lblErrorMessage3.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage3.Text = "";
                lblErrorMessage3.Text = ex.Message;
            }

        }

        protected void GvEducation_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvEducation.EditIndex = e.NewEditIndex;
            PopulateEducation();
        }

        protected void GvEducation_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvEducation.EditIndex = -1;
            PopulateEducation();
        }

        protected void GvEducation_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                // Check if the row index is within the valid range
                if (e.RowIndex >= 0 && e.RowIndex < GvEducation.Rows.Count)
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "UPDATE Education SET Subtitle=@Subtitle, Data=@Data, Description=@Description WHERE ID=@id";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        // Get the new values from the GridView row
                        var newSubtitle = ((TextBox)GvEducation.Rows[e.RowIndex].FindControl("txtSubtitle")).Text.Trim();
                        var newData = ((TextBox)GvEducation.Rows[e.RowIndex].FindControl("txtData")).Text.Trim();
                        var newDescription = ((TextBox)GvEducation.Rows[e.RowIndex].FindControl("txtDescription")).Text.Trim();
                        var id = Convert.ToInt32(GvEducation.DataKeys[e.RowIndex].Value.ToString());

                        // Add parameters to the SQL command
                        sqlCmd.Parameters.AddWithValue("@Subtitle", newSubtitle);
                        sqlCmd.Parameters.AddWithValue("@Data", newData);
                        sqlCmd.Parameters.AddWithValue("@Description", newDescription);
                        sqlCmd.Parameters.AddWithValue("@id", id);

                        sqlCmd.ExecuteNonQuery();
                        GvEducation.EditIndex = -1; // Exit edit mode
                        PopulateEducation(); // Assuming this method repopulates the GridView
                        lblSuccessMessage3.Text = "Record Updated";
                        lblErrorMessage3.Text = "";
                    }
                }
                else
                {
                    lblSuccessMessage3.Text = "";
                    lblErrorMessage3.Text = "Row index is out of range.";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage3.Text = "";
                lblErrorMessage3.Text = ex.Message;
            }

        }

        protected void GvEducation_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (var sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    const string query = "DELETE FROM Education WHERE ID=@Id";
                    var sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GvEducation.DataKeys[e.RowIndex].Value.ToString()));

                    sqlCmd.ExecuteNonQuery();
                    PopulateEducation(); // You need to implement this method to repopulate the GridView
                    lblSuccessMessage3.Text = "Selected Record Deleted";
                    lblErrorMessage3.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage3.Text = "";
                lblErrorMessage3.Text = ex.Message;
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }


        //GvBeyondClassroom
        protected void GvBeyondClassroom_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GvBeyondClassroom.EditIndex = e.NewEditIndex;
            PopulateBeyondClassroom();
        }

        protected void GvBeyondClassroom_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvBeyondClassroom.EditIndex = -1;
            PopulateBeyondClassroom();
        }

        protected void GvBeyondClassroom_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                // Check if the row index is within the valid range
                if (e.RowIndex >= 0 && e.RowIndex < GvBeyondClassroom.Rows.Count)
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "UPDATE BeyondClassroom SET Subtitle=@Subtitle, Data=@Data, Description=@Description WHERE ID=@id";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        // Get the new values from the GridView row
                        var newSubtitle = ((TextBox)GvBeyondClassroom.Rows[e.RowIndex].FindControl("txtSubtitle")).Text.Trim();
                        var newData = ((TextBox)GvBeyondClassroom.Rows[e.RowIndex].FindControl("txtData")).Text.Trim();
                        var newDescription = ((TextBox)GvBeyondClassroom.Rows[e.RowIndex].FindControl("txtDescription")).Text.Trim();
                        var id = Convert.ToInt32(GvBeyondClassroom.DataKeys[e.RowIndex].Value.ToString());

                        // Add parameters to the SQL command
                        sqlCmd.Parameters.AddWithValue("@Subtitle", newSubtitle);
                        sqlCmd.Parameters.AddWithValue("@Data", newData);
                        sqlCmd.Parameters.AddWithValue("@Description", newDescription);
                        sqlCmd.Parameters.AddWithValue("@id", id);

                        sqlCmd.ExecuteNonQuery();
                        GvBeyondClassroom.EditIndex = -1; // Exit edit mode
                        PopulateBeyondClassroom(); // Assuming this method repopulates the GridView
                        lblSuccessMessage3.Text = "Record Updated";
                        lblErrorMessage3.Text = "";
                    }
                }
                else
                {
                    lblSuccessMessage4.Text = "";
                    lblErrorMessage4.Text = "Row index is out of range.";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage4.Text = "";
                lblErrorMessage4.Text = ex.Message;
            }
        }

        protected void GvBeyondClassroom_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "INSERT INTO BeyondClassroom (Subtitle, Data, Description) VALUES (@Subtitle, @Data, @Description)";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@Subtitle", ((TextBox)GvBeyondClassroom.FooterRow.FindControl("txtSubtitleFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Data", ((TextBox)GvBeyondClassroom.FooterRow.FindControl("txtDataFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Description", ((TextBox)GvBeyondClassroom.FooterRow.FindControl("txtDescriptionFooter")).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateBeyondClassroom();
                        lblSuccessMessage4.Text = "New Record Added";
                        lblErrorMessage4.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage4.Text = "";
                lblErrorMessage4.Text = ex.Message;
            }

        }

        protected void GvBeyondClassroom_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (var sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    const string query = "DELETE FROM BeyondClassroom WHERE ID=@Id";
                    var sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GvBeyondClassroom.DataKeys[e.RowIndex].Value.ToString()));

                    sqlCmd.ExecuteNonQuery();
                    PopulateBeyondClassroom();
                    lblSuccessMessage4.Text = "Selected Record Deleted";
                    lblErrorMessage4.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage4.Text = "";
                lblErrorMessage4.Text = ex.Message;
            }
        }


        //GvServicesSection
        protected void GvServicesSection_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "INSERT INTO ServicesSection (ImageName, Title, Detail) VALUES (@ImageName, @Title, @Detail)";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@ImageName", ((TextBox)GvServicesSection.FooterRow.FindControl("txtImageNameFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Title", ((TextBox)GvServicesSection.FooterRow.FindControl("txtTitleFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Detail", ((TextBox)GvServicesSection.FooterRow.FindControl("txtDetailFooter")).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateServicesSection();
                        lblSuccessMessage5.Text = "New Record Added";
                        lblErrorMessage5.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage5.Text = "";
                lblErrorMessage5.Text = ex.Message;
            }

        }

        protected void GvServicesSection_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvServicesSection.EditIndex = e.NewEditIndex;
            PopulateServicesSection();
        }

        protected void GvServicesSection_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvServicesSection.EditIndex = -1;
            PopulateServicesSection();
        }

        protected void GvServicesSection_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                // Check if the row index is within the valid range
                if (e.RowIndex >= 0 && e.RowIndex < GvServicesSection.Rows.Count)
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "UPDATE ServicesSection SET ImageName=@ImageName, Title=@Title, Detail=@Detail WHERE ID=@id";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        // Get the new values from the GridView row
                        var newImageName = ((TextBox)GvServicesSection.Rows[e.RowIndex].FindControl("txtImageName")).Text.Trim();
                        var newTitle = ((TextBox)GvServicesSection.Rows[e.RowIndex].FindControl("txtTitle")).Text.Trim();
                        var newDetail = ((TextBox)GvServicesSection.Rows[e.RowIndex].FindControl("txtDetail")).Text.Trim();
                        var id = Convert.ToInt32(GvServicesSection.DataKeys[e.RowIndex].Value.ToString());

                        // Add parameters to the SQL command
                        sqlCmd.Parameters.AddWithValue("@ImageName", newImageName);
                        sqlCmd.Parameters.AddWithValue("@Title", newTitle);
                        sqlCmd.Parameters.AddWithValue("@Detail", newDetail);
                        sqlCmd.Parameters.AddWithValue("@id", id);

                        sqlCmd.ExecuteNonQuery();
                        GvServicesSection.EditIndex = -1; // Exit edit mode
                        PopulateServicesSection();
                        lblSuccessMessage5.Text = "Record Updated";
                        lblErrorMessage5.Text = "";
                    }
                }
                else
                {
                    lblSuccessMessage5.Text = "";
                    lblErrorMessage5.Text = "Row index is out of range.";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }

        }

        protected void GvServicesSection_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (var sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    const string query = "DELETE FROM ServicesSection WHERE ID=@Id";
                    var sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GvServicesSection.DataKeys[e.RowIndex].Value.ToString()));

                    sqlCmd.ExecuteNonQuery();
                    PopulateServicesSection();
                    lblSuccessMessage5.Text = "Selected Record Deleted";
                    lblErrorMessage5.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage5.Text = "";
                lblErrorMessage5.Text = ex.Message;
            }

        }


        //GvProgrammingLanguage
        protected void GvProgrammingLanguage_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "INSERT INTO ProgrammingLanguage (LanguageName,LanguagePercentage) VALUES (@LanguageName,@LanguagePercentage)";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@LanguageName", ((TextBox)GvProgrammingLanguage.FooterRow.FindControl("txtLanguageNameFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@LanguagePercentage", ((TextBox)GvProgrammingLanguage.FooterRow.FindControl("txtLanguagePercentageFooter")).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "New Record Added";
                        lblErrorMessage.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;

            }
        }

        protected void GvProgrammingLanguage_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvProgrammingLanguage.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GvProgrammingLanguage_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvProgrammingLanguage.EditIndex = -1;
            PopulateGridview();
        }

        protected void GvProgrammingLanguage_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                // Check if the row index is within the valid range
                if (e.RowIndex >= 0 && e.RowIndex < GvProgrammingLanguage.Rows.Count)
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "UPDATE ProgrammingLanguage SET LanguageName=@LanguageName,LanguagePercentage=@LanguagePercentage WHERE Id=@id";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        // Get the new values from the GridView row
                        var newLanguageName = ((TextBox)GvProgrammingLanguage.Rows[e.RowIndex].FindControl("txtLanguageName")).Text.Trim();
                        var newLanguagePercentage = ((TextBox)GvProgrammingLanguage.Rows[e.RowIndex].FindControl("txtLanguagePercentage")).Text.Trim();
                        var id = Convert.ToInt32(GvProgrammingLanguage.DataKeys[e.RowIndex].Value.ToString());

                        // Add parameters to the SQL command
                        sqlCmd.Parameters.AddWithValue("@LanguageName", newLanguageName);
                        sqlCmd.Parameters.AddWithValue("@LanguagePercentage", newLanguagePercentage);
                        sqlCmd.Parameters.AddWithValue("@id", id);

                        sqlCmd.ExecuteNonQuery();
                        GvProgrammingLanguage.EditIndex = -1; // Exit edit mode
                        PopulateGridview();
                        lblSuccessMessage.Text = "Record Updated";
                        lblErrorMessage.Text = "";
                    }
                }
                else
                {
                    lblSuccessMessage.Text = "";
                    lblErrorMessage.Text = "Row index is out of range.";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void GvProgrammingLanguage_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {

                using (var sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    const string query = "DELETE FROM ProgrammingLanguage WHERE Id=@Id";
                    var sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GvProgrammingLanguage.DataKeys[e.RowIndex].Value.ToString()));

                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";
                }

            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;

            }
        }


        //GvFrontend
        protected void GvFrontend_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "INSERT INTO Frontend (SkillName,SkillPercentage) VALUES (@SkillName,@SkillPercentage)";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@SkillName", ((TextBox)GvFrontend.FooterRow.FindControl("txtSkillNameFooter")).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@SkillPercentage", ((TextBox)GvFrontend.FooterRow.FindControl("txtSkillPercentageFooter")).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateFrontend();
                        lblSuccessMessage1.Text = "New Record Added";
                        lblErrorMessage1.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage1.Text = "";
                lblErrorMessage1.Text = ex.Message;

            }
        }

        protected void GvFrontend_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvFrontend.EditIndex = e.NewEditIndex;
            PopulateFrontend();
        }

        protected void GvFrontend_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvFrontend.EditIndex = -1;
            PopulateFrontend();
        }

        protected void GvFrontend_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                // Check if the row index is within the valid range
                if (e.RowIndex >= 0 && e.RowIndex < GvFrontend.Rows.Count)
                {
                    using (var sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        const string query = "UPDATE Frontend SET SkillName=@SkillName,SkillPercentage=@SkillPercentage WHERE FrontendID=@id";
                        var sqlCmd = new SqlCommand(query, sqlCon);

                        // Get the new values from the GridView row
                        var newSkillName = ((TextBox)GvFrontend.Rows[e.RowIndex].FindControl("txtSkillName")).Text.Trim();
                        var newSkillPercentage = ((TextBox)GvFrontend.Rows[e.RowIndex].FindControl("txtSkillPercentage")).Text.Trim();
                        var id = Convert.ToInt32(GvFrontend.DataKeys[e.RowIndex].Value.ToString());

                        // Add parameters to the SQL command
                        sqlCmd.Parameters.AddWithValue("@SkillName", newSkillName);
                        sqlCmd.Parameters.AddWithValue("@SkillPercentage", newSkillPercentage);
                        sqlCmd.Parameters.AddWithValue("@id", id);

                        sqlCmd.ExecuteNonQuery();
                        GvFrontend.EditIndex = -1; // Exit edit mode
                        PopulateFrontend();
                        lblSuccessMessage1.Text = "Record Updated";
                        lblErrorMessage1.Text = "";
                    }
                }
                else
                {
                    lblSuccessMessage1.Text = "";
                    lblErrorMessage1.Text = "Row index is out of range.";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage1.Text = "";
                lblErrorMessage1.Text = ex.Message;
            }
        }

        protected void GvFrontend_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {

                using (var sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    const string query = "DELETE FROM Frontend WHERE FrontendID=@Id";
                    var sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GvFrontend.DataKeys[e.RowIndex].Value.ToString()));

                    sqlCmd.ExecuteNonQuery();
                    PopulateFrontend();
                    lblSuccessMessage1.Text = "Selected Record Deleted";
                    lblErrorMessage1.Text = "";
                }

            }
            catch (Exception ex)
            {
                lblSuccessMessage1.Text = "";
                lblErrorMessage1.Text = ex.Message;

            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("mypage.aspx");
        }
    }
}