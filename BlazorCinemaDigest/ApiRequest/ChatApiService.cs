using BlazorCinemaDigest.ApiRequest.Model;
using System.Text.Json;

namespace BlazorCinemaDigest.ApiRequest
{
    public class ChatApiService
    {
        private readonly HttpClient _httpClient;
        private readonly ILogger<UserApiService> _logger;
        public ChatApiService(HttpClient httpClient, ILogger<UserApiService> logger)
        {
            _httpClient = httpClient;
            _logger = logger;
        }
        public async Task<MovieChat> GetMovieChatById(int id)
        {
            var url = $"api/Chat/chat/{id}";

            var responce = await _httpClient.GetAsync(url);
            responce.EnsureSuccessStatusCode();
            var responceContent = await responce.Content.ReadAsStringAsync();
            var data = JsonSerializer.Deserialize<MovieChat>(responceContent);
            return data;

        }
        public async Task<MovieChat> GetMovieChatByMovieId(int id)
        {
            var url = $"api/Chat/chat/movie/{id}";

            var responce = await _httpClient.GetAsync(url);
            responce.EnsureSuccessStatusCode();
            var responceContent = await responce.Content.ReadAsStringAsync();
            var data = JsonSerializer.Deserialize<MovieChat>(responceContent);
            return data;

        }
        public async Task<UserChat> GetUserChatById(int id)
        {
            var url = $"api/Chat/chat/{id}";

            var responce = await _httpClient.GetAsync(url);
            responce.EnsureSuccessStatusCode();
            var responceContent = await responce.Content.ReadAsStringAsync();
            var data = JsonSerializer.Deserialize<UserChat>(responceContent);
            return data;
        }
        public async Task<UserChat> GetUserChatByUsers(int senderId, int recipientId)
        {
            var url = $"api/UserChat/chat/from/{senderId}/to/{recipientId}";
            var responce = await _httpClient.GetAsync(url);
            responce.EnsureSuccessStatusCode();
            var responceContent = await responce.Content.ReadAsStringAsync();
            var data = JsonSerializer.Deserialize<UserChat>(responceContent);
            return data;
        }
    }
}
