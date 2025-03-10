namespace BlazorCinemaDigest.Store.Reducers
{
    using BlazorCinemaDigest.Store.Actions;
    using BlazorCinemaDigest.Store.States;
    using Redux;

    public static class UserReducer
    {
        public static UserState Reduce(UserState state, IAction action)
        {
            switch (action)
            {
                case SetUserAction setUserAction:
                    return new UserState(setUserAction.User, true);

                case UnsetUserAction _:
                    return new UserState(null, false);

                default:
                    return state;
            }
        }
    }
}
