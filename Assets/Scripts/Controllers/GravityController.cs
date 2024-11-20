using UnityEngine;
using UnityEngine.Serialization;

namespace NerdWar.Controllers
{
    public class GravityController : MonoBehaviour
    {
        [SerializeField] private float _gravityStrength = 9.81f;
        [SerializeField] private float _gravityRadius = 10f;
        [SerializeField] private LayerMask _affectedLayers;
        [SerializeField] private float _minOrbitalVelocity = 5f;

        // Update is called once per frame
        void FixedUpdate()
        {
            Collider[] objectsInRange = Physics.OverlapSphere(transform.position, _gravityRadius, _affectedLayers);

            foreach (Collider col in objectsInRange)
            {
                Rigidbody rb = col.attachedRigidbody;

                if (rb != null)
                {
                    Vector3 directionToCenter = (transform.position - rb.position).normalized;
                    Vector3 gravitationalPull = directionToCenter * _gravityStrength;
                    rb.AddForce(gravitationalPull);

                    Vector3 tangentDirection = Vector3.Cross(directionToCenter, Vector3.up).normalized;

                    if (rb.linearVelocity.magnitude < _minOrbitalVelocity)
                    {
                        rb.linearVelocity = tangentDirection * _minOrbitalVelocity;
                    }
                }
            }
        }

        void OnDrawGizmosSelected()
        {
            Gizmos.color = Color.yellow;
            Gizmos.DrawWireSphere(transform.position, _gravityRadius);
        }
    }
}