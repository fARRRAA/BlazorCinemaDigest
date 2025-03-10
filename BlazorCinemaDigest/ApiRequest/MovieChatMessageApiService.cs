using BlazorCinemaDigest.ApiRequest.Model;
using System.Text;
using System.Text.Json;

namespace BlazorCinemaDigest.ApiRequest.Services
{
    public class ChatMessageApiService
    {
        private readonly HttpClient _httpClient;
        private readonly ILogger<UserApiService> _logger;
        public ChatMessageApiService(HttpClient httpClient, ILogger<UserApiService> logger)
        {
            _httpClient = httpClient;
            _logger = logger;
        }
        //api/MovieChatMessage/api/movieChat/movie/messages
        //api/MovieChatMessage/api/movieChat/movie/message/add
        public async Task<List<MovieChatMessage>> GetMovieChatMessages(int chatId)
        {
            var url = $"api/MovieChatMessage/api/movieChat/movie/messages/{chatId}";
            var response = await _httpClient.GetAsync(url);
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();
            List<MovieChatMessage>? data =  JsonSerializer.Deserialize<List<MovieChatMessage>>(content);
            return data;
        }
        public async Task CreateMovieChatMessage(MovieChatMessageRequest msg)
        {
            var url = "api/MovieChatMessage/api/movieChat/movie/message/add";
            var content=new StringContent(JsonSerializer.Serialize(msg), Encoding.UTF8,"application/json");
            var str = await content.ReadAsStringAsync();
            var response = await _httpClient.PostAsync(url, content);
            var suka = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

        }
        public async Task<List<UserChatMessage>> GetUserChatMessages(int chatId)
        {
            var url = $"userChat/messages/{chatId}";
            var response = await _httpClient.GetAsync(url);
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();
            List<UserChatMessage>? data = JsonSerializer.Deserialize<List<UserChatMessage>>(content);
            return data;
        }
        public async Task CreateUserChatMessage(UserChatMessageRequest msg)
        {
            var url = $"userChat/messages/add";
            var content = new StringContent(JsonSerializer.Serialize(msg), Encoding.UTF8, "application/json");
            var str = await content.ReadAsStringAsync();
            var response = await _httpClient.PostAsync(url, content);
            var suka = await response.Content.ReadAsStringAsync();
            response.EnsureSuccessStatusCode();

        }

        public async Task EditMovieMessage(int id, MovieChatMessageRequest msg)
        {
            var url = $"api/movieChat/movie/message/edit/{id}";
            var content = new StringContent(JsonSerializer.Serialize(msg), Encoding.UTF8, "application/json");
            var str = await content.ReadAsStringAsync();
            var response = await _httpClient.PutAsync(url, content);
            response.EnsureSuccessStatusCode();
            var suka = await response.Content.ReadAsStringAsync();
        }
        public async Task DeleteMovieMessage(int id)
        {
            var url = $"api/movieChat/movie/message/delete/{id}";
            var response = await _httpClient.DeleteAsync(url);
            response.EnsureSuccessStatusCode();
            var suka = await response.Content.ReadAsStringAsync();
        }
        public async Task EditUserMessage(int id, UserChatMessageRequest msg)
        {
            var url = $"userChat/messages/update/{id}";
            var content = new StringContent(JsonSerializer.Serialize(msg), Encoding.UTF8, "application/json");
            var str = await content.ReadAsStringAsync();
            var response = await _httpClient.PutAsync(url, content);
            response.EnsureSuccessStatusCode();
            var suka = await response.Content.ReadAsStringAsync();
        }
        public async Task DeleteUserMessage(int id)
        {
            var url = $"userChat/messages/delete/{id}";
            var response = await _httpClient.DeleteAsync(url);
            response.EnsureSuccessStatusCode();
            var suka = await response.Content.ReadAsStringAsync();
        }
    }

}
