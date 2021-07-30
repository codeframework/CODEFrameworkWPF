using System.Security.Principal;

namespace CODE.Framework.Example.Reference.Models.User
{
    // TODO: Implement real user logic here

    /// <summary>
    /// Custom user object for this application
    /// </summary>
    public class CODEFrameworkUser : IIdentity
    {
        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="username">Name of the logged in user</param>
        public CODEFrameworkUser(string username)
        {
            Name = username;
            AuthenticationType = "Custom";
            IsAuthenticated = true;
        }
        /// <summary>
        /// Gets the name of the current user.
        /// </summary>
        /// <returns>
        /// The name of the user on whose behalf the code is running.
        /// </returns>
        public string Name { get; private set; }

        /// <summary>
        /// Gets the type of authentication used.
        /// </summary>
        /// <returns>
        /// The type of authentication used to identify the user.
        /// </returns>
        public string AuthenticationType { get; private set; }

        /// <summary>
        /// Gets a value that indicates whether the user has been authenticated.
        /// </summary>
        /// <returns>
        /// true if the user was authenticated; otherwise, false.
        /// </returns>
        public bool IsAuthenticated { get; private set; }
    }

    /// <summary>
    /// Custom security principal for CODE Framework
    /// </summary>
    public class CODEFrameworkPrincipal : IPrincipal
    {
        /// <summary>
        /// Consturctor
        /// </summary>
        /// <param name="user">Ordico user</param>
        public CODEFrameworkPrincipal(CODEFrameworkUser user)
        {
            Identity = user;
        }

        /// <summary>
        /// Determines whether the current principal belongs to the specified role.
        /// </summary>
        /// <returns>
        /// true if the current principal is a member of the specified role; otherwise, false.
        /// </returns>
        /// <param name="role">The name of the role for which to check membership. </param>
        public bool IsInRole(string role)
        {
            // TODO: implement this for real by detirmining which roles the user is in

            return false;
        }

        /// <summary>
        /// Gets the identity of the current principal.
        /// </summary>
        /// <returns>
        /// The <see cref="T:System.Security.Principal.IIdentity"/> object associated with the current principal.
        /// </returns>
        public IIdentity Identity { get; private set; }
    }
}
