using BlazorCinemaDigest.ApiRequest.Model;
using System.Text.Json;

namespace BlazorCinemaDigest.ApiRequest
{
    public class GenreApiService
    {
        private readonly HttpClient _httpClient;
        private readonly ILogger<UserApiService> _logger;
        public GenreApiService(HttpClient httpClient, ILogger<UserApiService> logger)
        {
            _httpClient = httpClient;
            _logger = logger;
        }
        public async Task<List<Genre>> GetAllGenres()
        {
            var url = "api/Genre/all";
            var responce = await _httpClient.GetAsync(url);
            responce.EnsureSuccessStatusCode();
            var content =await  responce.Content.ReadAsStringAsync();
            var data = JsonSerializer.Deserialize<List<Genre>>(content);
            return data;
        }
    }
}
