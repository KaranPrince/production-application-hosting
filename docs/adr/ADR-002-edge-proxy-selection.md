# ADR-002: Edge Reverse Proxy Selection

## Status

Accepted

---

## Context

The platform requires a single public entry point capable of:

* Routing traffic to multiple backend services.
* Terminating TLS connections.
* Performing backend health checks.
* Supporting future scalability.
* Integrating with containerized workloads.

---

## Decision

HAProxy has been selected as the edge reverse proxy.

---

## Rationale

HAProxy provides:

* High-performance Layer 4 and Layer 7 proxying.
* Mature health checking.
* Host-based routing.
* TLS termination.
* Excellent observability.
* Production-proven reliability.

---

## Alternatives Considered

### NGINX

Advantages:

* Excellent web server.
* Reverse proxy.
* Large ecosystem.

Reason not selected:

* HAProxy provides more mature load-balancing capabilities for this stage.

---

### Traefik

Advantages:

* Kubernetes-native.
* Automatic service discovery.

Reason not selected:

* Docker Compose environment does not yet require dynamic service discovery.

Traefik will be evaluated in a future Kubernetes sprint.

---

## Consequences

Positive:

* Single public entry point.
* Centralized TLS.
* Simplified routing.
* Future compatibility with Kubernetes.

Negative:

* Single point of failure until High Availability is introduced in Sprint 03.
