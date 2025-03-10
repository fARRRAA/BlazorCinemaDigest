using BlazorCinemaDigest.ApiRequest.Model;
using Redux;

namespace BlazorCinemaDigest.Store.Actions
{
    public class SetUserAction : IAction
    {
        public SingleTonUser User { get; }

        public SetUserAction(SingleTonUser user)
        {
            User = user;
        }
    }

    public class UnsetUserAction : IAction { }
}
