using BlazorCinemaDigest.ApiRequest.Services;
using BlazorCinemaDigest.Components;
using BlazorCinemaDigest.ApiRequest;
using BlazorCinemaDigest.Services;

using BlazorCinemaDigest.Store.Features;
namespace BlazorCinemaDigest
{
    public class Program
    {
        public static void Main(string[] args)
        {
            AppContext.SetSwitch("System.Net.Http.HttpClientHandler.DangerousAcceptAnyServerCertificateValidator", true);

            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddRazorComponents()
                .AddInteractiveServerComponents();

            builder.Services.AddScoped<UserApiService>();
            builder.Services.AddScoped<MovieApiService>();
            builder.Services.AddScoped<GenreApiService>();
            builder.Services.AddScoped<ChatApiService>();
            builder.Services.AddScoped<ChatMessageApiService>();
            builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri("https://localhost:7253/") });
            var currentAssembly = typeof(Program).Assembly;

            builder.Services.AddSingleton<ApiRequest.Services.UserService>();
            var app = builder.Build();

            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Error");
                app.UseHsts();
            }
            app.UseHttpsRedirection();

            app.UseStaticFiles();
            app.UseAntiforgery();
            app.MapRazorComponents<App>()
                .AddInteractiveServerRenderMode();

            app.Run();
        }
    }
}
