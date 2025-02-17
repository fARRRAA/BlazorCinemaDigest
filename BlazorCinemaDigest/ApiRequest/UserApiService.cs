using System.Text.Json;
using System.Text;
using BlazorCinemaDigest.ApiRequest.Model;
using Microsoft.AspNetCore.Identity.Data;
using BlazorCinemaDigest.Components.Pages;

namespace BlazorCinemaDigest.ApiRequest
{
    public class UserApiService
    {
        private readonly HttpClient _httpClient;
        private readonly ILogger<UserApiService> _logger;

        public UserApiService(HttpClient httpClient, ILogger<UserApiService> logger)
        {
            _httpClient = httpClient;
            _logger = logger;
        }

        public async Task<UserData> GetAllUsersAsync()
        {
            var url = "api/Users/getAll";

            try
            {
                var response = await _httpClient.GetAsync(url).ConfigureAwait(false);
                response.EnsureSuccessStatusCode();

                var responseContent = await response.Content.ReadAsStringAsync().ConfigureAwait(false);

                if (string.IsNullOrEmpty(responseContent))
                {
                    _logger.LogWarning("Ответ от сервера пуст.");
                    return new UserData();
                }

                var usersData = JsonSerializer.Deserialize<UserData>(responseContent, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });

                return usersData ?? new UserData();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Ошибка при запросе");
                return new UserData();
            }
        }

        public async Task<UserAddData> AddNewUser(ReqDataUser user)
        {
            try
            {
                var content = new StringContent(
                    JsonSerializer.Serialize(user),
                    Encoding.UTF8,
                    "application/json");

                var response = await _httpClient.PostAsync("api/Users/create", content);
                response.EnsureSuccessStatusCode();

                return JsonSerializer.Deserialize<UserAddData>(
                    await response.Content.ReadAsStringAsync()) ?? new UserAddData();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка при запросе: {ex.Message}");
                return new UserAddData();
            }
        }
        public async Task<SingleTonUser> Login(string login, string password)
        {
            try
            {
                var content = new StringContent(
                    JsonSerializer.Serialize(new Model.LoginRequest
                    {
                        login=login,
                        password=password
                    }),
                    Encoding.UTF8,
                    "application/json");

                var response = await _httpClient.PostAsync("api/Users/login", content);
                response.EnsureSuccessStatusCode();

                return JsonSerializer.Deserialize<SingleTonUser>(await response.Content.ReadAsStringAsync());
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка при запросе: {ex.Message}");
                return new SingleTonUser();
            }
        }
        public async Task<UserResponce> GetUserByIdAsync(int id)
        {
            try
            {

                var response = await _httpClient.GetAsync($"api/Users/user/{id}");
                response.EnsureSuccessStatusCode();

                return JsonSerializer.Deserialize<UserResponce>(await response.Content.ReadAsStringAsync());
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка при запросе: {ex.Message}");
                return new UserResponce();
            }
        }
        public async Task<UserAddData> RegisterUser(ReqDataUser user)
        {
            try
            {
                var content = new StringContent(
                    JsonSerializer.Serialize(user),
                    Encoding.UTF8,
                    "application/json");

                var response = await _httpClient.PostAsync("api/Users/register", content);
                response.EnsureSuccessStatusCode();

                return JsonSerializer.Deserialize<UserAddData>(
                    await response.Content.ReadAsStringAsync()) ?? new UserAddData();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка при запросе: {ex.Message}");
                return new UserAddData();
            }
        }
        public async Task EditUserAsync(int id,ReqDataUser user)
        {
            try
            {
                var content = new StringContent(
                    JsonSerializer.Serialize(user),
                    Encoding.UTF8,
                    "application/json");

                var response = await _httpClient.PostAsync($"api/Users/update/{id}", content);
                response.EnsureSuccessStatusCode();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка при запросе: {ex.Message}");
            }
        }
        public async Task DeleteUser(int id)
        {
            try
            {
                var response = await _httpClient.DeleteAsync($"api/Users/delete/{id}");
                response.EnsureSuccessStatusCode();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка при запросе: {ex.Message}");
            }
        }
    }
}
