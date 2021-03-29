using System.ComponentModel.DataAnnotations.Schema;

namespace aspnetcore_deployment.Data
{
    public class Sample
    {
        public int Id { get; set; }
        public string Name { get; set; }
        [Column(TypeName = "decimal(18,4)")]
        public decimal Price { get; set; }
    }
}