using System.Data.Entity;

namespace WTEXP_8.Models
{
    public class EmployeeContext : DbContext
    {
        public EmployeeContext() : base("name=EmployeeContext") { }

        public DbSet<Employee> Employees { get; set; }
    }
}
