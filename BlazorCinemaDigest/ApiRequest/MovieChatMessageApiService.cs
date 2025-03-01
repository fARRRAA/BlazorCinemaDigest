using BlazorCinemaDigest.ApiRequest.Model;
using System.Text;
using System.Text.Json;

namespace BlazorCinemaDigest.ApiRequest.Services
{
    public class MovieChatMessageApiService
    {
        private readonly HttpClient _httpClient;
        private readonly ILogger<UserApiService> _logger;
        public MovieChatMessageApiService(HttpClient httpClient, ILogger<UserApiService> logger)
        {
            _httpClient = httpClient;
            _logger = logger;
        }
        //api/MovieChatMessage/api/movieChat/movie/messages
        //api/MovieChatMessage/api/movieChat/movie/message/add
        public async Task<List<MovieChatMessage>> GetMessages(int chatId)
        {
            var url = $"api/MovieChatMessage/api/movieChat/movie/messages/{chatId}";
            var response = await _httpClient.GetAsync(url);
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();
            List<MovieChatMessage>? data =  JsonSerializer.Deserialize<List<MovieChatMessage>>(content);
            return data;
        }
        public async Task CreateMessage(MovieChatMessageRequest msg)
        {
            var url = "api/MovieChatMessage/api/movieChat/movie/message/add";
            var content=new StringContent(JsonSerializer.Serialize(msg), Encoding.UTF8,"application/json");
            var str = await content.ReadAsStringAsync();
            var response = await _httpClient.PostAsync(url, content);
            var suka = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

        }

    }

}
