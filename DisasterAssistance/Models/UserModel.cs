
namespace DisasterAssistance.Models
{
    public class UserModel
    {
        public int UserId { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public int Zip { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public int User_Type { get; set; }
        public byte[] Password { get; set; }
    }
}