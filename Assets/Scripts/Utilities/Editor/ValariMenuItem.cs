using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

namespace Valari
{
    // https://docs.unity3d.com/ScriptReference/MenuItem.html
    public class ValariMenuItem : MonoBehaviour
    {
        //: % (ctrl on Windows, cmd on macOS), # (shift), & (alt).

        #region SelectPrefab

        [MenuItem("Valari/Open View/SampleView")]
        public static void SampleView()
        {
            AssetDatabase.OpenAsset(AssetDatabase.LoadMainAssetAtPath("Assets/Prefabs/Views/SampleView.prefab"));
        }

        #endregion

        #region Scenes

#if UNITY_EDITOR_WIN
        [MenuItem("Valari/Scenes/SampleScene %#q")]
#else
        [MenuItem("Valari/Scenes/SampleScene &#q")]
#endif
        public static void Authentication()
        {
            EditorSceneManager.OpenScene("Assets/Scenes/SampleScene.unity");
        }
        #endregion
    }
}