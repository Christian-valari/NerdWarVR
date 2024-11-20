using NerdWar.Manager;
using NerdWar.Network.Manager;
using NerdWar.Network.Managers;
using UnityEngine;
using Valari.Manager;
using Valari.Views;

namespace Valari.Services
{
    public static class Game
    {
        public static readonly ServiceLocator Services = new ServiceLocator();

        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        public static void Initialize()
        {
            GameBindings bindings = Resources.Load<GameBindings>("GameBindings");
            
            Services.Clear();
            InitializeUnityServices(bindings);
            InitializeViewServices(bindings);
            
            // NOTE: In adding a component to the GameBindings, just add once
            
            // if not in the GameBindings then use this to find the component in the scene
            Services.Add<WordSpawnerNetworkManager>(new UnityComponentServiceProvider<WordSpawnerNetworkManager>());
            Services.Add<WeaponNetworkManager>(new UnityComponentServiceProvider<WeaponNetworkManager>());
            Services.Add<NetworkGameManager>(new UnityComponentServiceProvider<NetworkGameManager>());
            Services.Add<WordCheckerManager>(new UnityComponentServiceProvider<WordCheckerManager>());
            Services.Add<PlayerManager>(new UnityComponentServiceProvider<PlayerManager>());
            Services.Add<GameManager>(new UnityComponentServiceProvider<GameManager>());
            Services.Add<AudioManager>(new UnityComponentServiceProvider<AudioManager>());
            Services.Add<WordSpawnerManager>(new UnityComponentServiceProvider<WordSpawnerManager>());
            Services.Add<WeaponManager>(new UnityComponentServiceProvider<WeaponManager>());
            
            // add the objects from GameBindings to the Services
            Services.Add(bindings.SampleBind);
            Services.Add(bindings.GameSettingSO);
        }
        
        /// <summary>
        /// Instantiate the "Services" GameObject in DontDestroyOnLoad
        /// </summary>
        private static void InitializeUnityServices(GameBindings bindings)
        {
            GameObject servicesObject = new GameObject("Services");
            Object.DontDestroyOnLoad(servicesObject);

            InitializeSampleBind(servicesObject, bindings);
        }

        /// <summary>
        /// This method instantiate the sampleBind prefab to the Services
        /// Add the service object to the ServicesLocator
        /// </summary>
        private static void InitializeSampleBind(GameObject servicesObject, GameBindings bindings)
        {
            SampleManager sampleManager = Object.Instantiate(bindings.SampleManager, servicesObject.transform);
            Services.Add<SampleManager>(sampleManager);
        }

        /// <summary>
        /// This method initialize/add the view collection and container to the services
        /// </summary>
        private static void InitializeViewServices(GameBindings bindings)
        {
            Services.Add<ViewCollection>(bindings.ViewCollection);
            Services.Add<ViewContainer>(new UnityComponentServiceProvider<ViewContainer>());
        }
    }
}