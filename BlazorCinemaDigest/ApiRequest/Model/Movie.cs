﻿using System.ComponentModel.DataAnnotations.Schema;
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
        [NotMapped]
        public string DurationString
        {
            get => duration.ToString(@"hh\:mm\:ss"); // Форматирует TimeSpan как строку
            set
            {
                if (TimeSpan.TryParse(value, out var parsedDuration))
                {
                    duration = parsedDuration;
                }
            }
        }
    }
    public class MovieList
    {
        public List<Movie> movies { get; set; }
    }
    public class MovieRequest
    {

        public string name { get; set; }
        public int genreId { get; set; }
        public Genre Genre { get; set; }
        public string description { get; set; }
        public decimal rating { get; set; }
        public string image { get; set; }
        public TimeSpan duration { get; set; }
        public int releaseYear { get; set; }
        public string DurationString
        {
            get => duration.ToString(@"hh\:mm\:ss"); // Форматирует TimeSpan как строку
            set
            {
                if (TimeSpan.TryParse(value, out var parsedDuration))
                {
                    duration = parsedDuration;
                }
            }
        }
    }
    public class MoviePhoto
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public DateTime UploadedAt { get; set; }
    }


}


