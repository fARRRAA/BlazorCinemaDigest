using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BlazorCinemaDigest.ApiRequest.Model
{
    public class Role
    {
        [Key]
        public int id { get; set; }
        public string name { get; set; }
    }
    public class UserResponce
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string email { get; set; }
        public string login { get; set; }
        public string password { get; set; }
        [ForeignKey(nameof(role))]
        public int roleId { get; set; }
        public Role role { get; set; }
    }

    public class UserData
    {
        public bool status { get; set; }
        public UserDataContainer data { get; set; }
    }

    public class UserDataContainer
    {
        public List<UserResponce> users { get; set; }
    }

    public class ReqDataUser
    {
        public string name { get; set; }
        public string email { get; set; }
        public string description { get; set; }
        public string login { get; set; }
        public string password { get; set; }

    }

    public class SingleTonUser
    {
        public int userId { get; set; }
        public string role { get; set; }
        public string token { get; set; }
    }
    public class UserAddData
    {
        public bool status { get; set; }
    }
    public class LoginRequest
    {
        public string login { get; set; }
        public string password { get; set; }
    }
}
