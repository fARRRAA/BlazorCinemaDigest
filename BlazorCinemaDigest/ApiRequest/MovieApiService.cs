using BlazorCinemaDigest.ApiRequest.Model;
using Microsoft.AspNetCore.Components;
using System.Text;
using System.Text.Json;
using System.Xml.Linq;

namespace BlazorCinemaDigest.ApiRequest
{
    public class MovieApiService
    {
        private readonly HttpClient _httpClient;
        private readonly ILogger<UserApiService> _logger;
        public MovieApiService(HttpClient httpClient, ILogger<UserApiService> logger)
        {
            _httpClient = httpClient;
            _logger = logger;
        }
        public async Task<List<Movie>> GetAllMovies(int? page, int? pageSize)
        {
            var url = $"api/Movie/all?page={page}&pageSize={pageSize}";

            try
            {
                var responce = await _httpClient.GetAsync(url);
                responce.EnsureSuccessStatusCode();
                var responceContent = await responce.Content.ReadAsStringAsync();
                var data = JsonSerializer.Deserialize<List<Movie>>(responceContent);
                return data;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Ошибка при запросе");
                return new List<Movie>();
            }
        }
        public async Task<List<Movie>> All()
        {
            var url = "api/Movie/all";

            try
            {
                var responce = await _httpClient.GetAsync(url);
                responce.EnsureSuccessStatusCode();
                var responceContent = await responce.Content.ReadAsStringAsync();
                var data = JsonSerializer.Deserialize<List<Movie>>(responceContent);
                return data;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Ошибка при запросе");
                return new List<Movie>();
            }
        }
        public async Task<List<Movie>> FilterMovies(string? name,string? genre, int? page,int? pageSize)
        {
            var url = $"api/Movie/all?name={name}&genre={genre}&page={page}&pageSize={pageSize}";

            try
            {
                var responce = await _httpClient.GetAsync(url);
                responce.EnsureSuccessStatusCode();
                var responceContent = await responce.Content.ReadAsStringAsync();
                var data = JsonSerializer.Deserialize<List<Movie>>(responceContent);
                return data;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Ошибка при запросе");
                return new List<Movie>();
            }
        }
        public async Task<Movie> GetMovieById(int id)
        {
            var url = $"api/Movie/movie/{id}";

                var responce = await _httpClient.GetAsync(url);
                responce.EnsureSuccessStatusCode();
                var responceContent = await responce.Content.ReadAsStringAsync();
                var data = JsonSerializer.Deserialize<Movie>(responceContent);
                return data;

        }
        public async Task<bool> AddMovie(MovieRequest movie)
        {

            var content = new StringContent(
                   JsonSerializer.Serialize(movie),
                   Encoding.UTF8,
                   "application/json");

            var response = await _httpClient.PostAsync("api/Movie/add", content);
            response.EnsureSuccessStatusCode();

            return true;
        }
        public async Task<bool> EditMovie(int id,MovieRequest movie)
        {
            var content = new StringContent(
                   JsonSerializer.Serialize(movie),
                   Encoding.UTF8,
                   "application/json");

            var response = await _httpClient.PutAsync($"api/Movie/update/{id}", content);
            response.EnsureSuccessStatusCode();

            return true;
        }
        public async Task<bool> DeleteMovie(int id)
        {
            var response = await _httpClient.DeleteAsync($"api/Movie/delete/{id}");
            response.EnsureSuccessStatusCode();

            return true;
        }
    }

}
