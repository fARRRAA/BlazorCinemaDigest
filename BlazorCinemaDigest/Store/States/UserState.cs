using BlazorCinemaDigest.ApiRequest.Model;
using Microsoft.AspNetCore.Components;

namespace BlazorCinemaDigest.Store.States
{
    public class UserState
    {
        public SingleTonUser CurrentUser { get; private set; }
        public bool IsAuthenticated { get; private set; }

        public UserState(SingleTonUser currentUser, bool isAuthenticated)
        {
            CurrentUser = currentUser;
            IsAuthenticated = isAuthenticated;
        }

        public static UserState Empty() => new UserState(null, false);
    }

}
