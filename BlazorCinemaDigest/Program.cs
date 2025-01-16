using BlazorCinemaDigest.ApiRequest.Services;
using BlazorCinemaDigest.Components;
using BlazorCinemaDigest.ApiRequest;
namespace BlazorCinemaDigest
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddRazorComponents()
                .AddInteractiveServerComponents();

            builder.Services.AddScoped<ApiRequestService>();
            builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri("https://localhost:7253/") });
            builder.Services.AddSingleton<UserService>();

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
