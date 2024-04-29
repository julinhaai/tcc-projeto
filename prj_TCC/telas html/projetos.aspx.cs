using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace prj_TCC.telas_html
{
    public partial class projetos : System.Web.UI.Page
    {
        public class Project
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["LastAccessedProjectId"] != null)
            {
                int projectId = (int)Session["LastAccessedProjectId"];

                using (MySqlConnection connection = new MySqlConnection("YourConnectionString"))
                {
                    connection.Open();

                    using (MySqlCommand command = new MySqlCommand("SELECT Id, Name FROM Projects WHERE Id = @Id", connection))
                    {
                        command.Parameters.AddWithValue("@Id", projectId);

                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                Project lastAccessedProject = new Project
                                {
                                    Id = reader.GetInt32(0),
                                    Name = reader.GetString(1)
                                };

                                Session["LastAccessedProject"] = lastAccessedProject;
                            }
                        }
                    }
                }
            }

        }
    }
}