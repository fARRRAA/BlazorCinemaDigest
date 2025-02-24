using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using BlazorCinemaDigest.Components.Pages;

namespace BlazorCinemaDigest.ApiRequest.Model
{
    public class UserChat
    {
        [Key]
        public int id { get; set; }
        [ForeignKey(nameof(FirstUser))]
        public int firsUserId { get; set; }
        public User FirstUser { get; set; }
        [ForeignKey(nameof(SecondUser))]
        public int secondUserId { get; set; }
        public User SecondUser { get; set; }
        public DateTime created_at { get; set; }
    }
    public class UserChatMesaage
    {
        [Key]
        public int id { get; set; }
        [ForeignKey(nameof(Chat))]
        public int chatId { get; set; }
        public UserChat Chat { get; set; }
        [ForeignKey(nameof(User))]
        public int userId { get; set; }
        public User User { get; set; }
        public string message { get; set; }
        public DateTime sent_at { get; set; }
        public string photoUrl { get; set; }
    }
    public class MovieChatMessage
    {
        [Key]
        public int id { get; set; }
        [ForeignKey(nameof(Chat))]
        public int chatId { get; set; }
        public MovieChat Chat { get; set; }
        [ForeignKey(nameof(User))]
        public int userId { get; set; }
        public User User { get; set; }
        public string message { get; set; }
        public DateTime sent_at { get; set; }
        public string photoUrl { get; set; }
    }
    public class MovieChat
    {
        [Key]
        public int id { get; set; }
        [ForeignKey(nameof(Movie))]
        public int movieId { get; set; }
        public Movie Movie { get; set; }
        public DateTime created_at { get; set; }

    }
}
