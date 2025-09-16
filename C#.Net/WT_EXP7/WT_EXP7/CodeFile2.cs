using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;

public class EmployeeDAL
{
    string cs = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;

    public List<Employee> GetAll()
    {
        List<Employee> list = new List<Employee>();
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Employees", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                list.Add(new Employee
                {
                    Id = (int)dr["Id"],
                    Name = dr["Name"].ToString(),
                    Email = dr["Email"].ToString(),
                    Department = dr["Department"].ToString()
                });
            }
        }
        return list;
    }

    public void Insert(Employee emp)
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand(
                "INSERT INTO Employees (Name,Email,Department) VALUES (@Name,@Email,@Department)", con);
            cmd.Parameters.AddWithValue("@Name", emp.Name);
            cmd.Parameters.AddWithValue("@Email", emp.Email);
            cmd.Parameters.AddWithValue("@Department", emp.Department);
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }

    public void Update(Employee emp)
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand(
                "UPDATE Employees SET Name=@Name,Email=@Email,Department=@Department WHERE Id=@Id", con);
            cmd.Parameters.AddWithValue("@Name", emp.Name);
            cmd.Parameters.AddWithValue("@Email", emp.Email);
            cmd.Parameters.AddWithValue("@Department", emp.Department);
            cmd.Parameters.AddWithValue("@Id", emp.Id);
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }

    public void Delete(int id)
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Employees WHERE Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", id);
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }
}