using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace BlazorCinemaDigest.ApiRequest.Model
{
    public class Genre
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
    }

    public class Movie
    {
        [Key]
        public int id { get; set; }
        public string name { get; set; }
        [ForeignKey(nameof(Genre))]
        public int genreId { get; set; }
        [JsonPropertyName("genre")]
        public Genre Genre { get; set; }
        public string description { get; set; }
        public decimal rating { get; set; }
        public string image { get; set; }
        public TimeSpan duration { get; set; }
        public int releaseYear { get; set; }
    }
    public class MovieList
    {
        public List<Movie> movies { get; set; }
    }
    public class MovieRequest
    {

        public string name { get; set; }
        [ForeignKey(nameof(Genre))]
        public int genreId { get; set; }
        public Genre Genre { get; set; }
        public string description { get; set; }
        public decimal rating { get; set; }
        public string image { get; set; }
        public TimeSpan duration { get; set; }
        public int releaseYear { get; set; }
    }



}


