using BlazorCinemaDigest.ApiRequest.Model;
using System.Text.Json;

namespace BlazorCinemaDigest.Services
{
    public class UserService
    {
        public SingleTonUser CurrentUser { get; private set; }
        public bool IsAuthenticated { get; private set; } = false;

        public void SetUser(SingleTonUser user)
        {
            CurrentUser = user;
            IsAuthenticated = true;
        }
        public void UnsetUser(SingleTonUser user)
        {
            CurrentUser = null;
            IsAuthenticated = false;
        }


    }
}
