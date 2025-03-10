using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using BlazorCinemaDigest.Components.Pages;
using System.Text.Json.Serialization;

namespace BlazorCinemaDigest.ApiRequest.Model
{
    public class UserChat
    {
        [Key]
        public int id { get; set; }
        [ForeignKey(nameof(FirstUser))]
        public int firstUserId { get; set; }
        [JsonPropertyName("firstUser")]
        public User FirstUser { get; set; }
        [ForeignKey(nameof(SecondUser))]
        public int secondUserId { get; set; }
        [JsonPropertyName("secondUser")]
        public User SecondUser { get; set; }
        public DateTime created_at { get; set; }
    }
    public class UserChatMessage
    {
        [Key]
        public int id { get; set; }
        [ForeignKey(nameof(Chat))]
        public int chatId { get; set; }
        [JsonPropertyName("chat")]
        public UserChat Chat { get; set; }
        [ForeignKey(nameof(User))]
        public int userId { get; set; }
        [JsonPropertyName("user")]
        public User User { get; set; }
        public string message { get; set; }
        public DateTime sent_at { get; set; }
        public string photoUrl { get; set; }
    }
    public class MovieChatMessage
    {
        [Key]
        public int id { get; set; }
        public int chatId { get; set; }
        [ForeignKey(nameof(Chat))]
        [JsonPropertyName("chat")]
        public MovieChat Chat { get; set; }
        public int userId { get; set; }
        [ForeignKey(nameof(User))]
        [JsonPropertyName("user")]
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
        [JsonPropertyName("movie")]
        public Movie Movie { get; set; }
        public DateTime created_at { get; set; }

    }
    public class UserChatMessageRequest
    {
        public int chatId { get; set; }
        public UserChat Chat { get; set; }
        public int userId { get; set; }
        public User User { get; set; }
        public string message { get; set; }
        public DateTime sent_at { get; set; }
        public string photoUrl { get; set; }
    }

    public class MovieChatMessageRequest
    {
        public int chatId { get; set; }
        [JsonPropertyName("chat")]

        public MovieChat Chat { get; set; }
        public int userId { get; set; }
        [JsonPropertyName("user")]

        public User User { get; set; }
        public string message { get; set; }
        public DateTime sent_at { get; set; }
        public string photoUrl { get; set; }
    }
}
