# Sprint 01 – Architecture Review Questions

## Architecture

1. Why was HAProxy introduced instead of exposing containers directly?
2. Why is TLS terminated at the edge instead of inside every application?
3. Why are backend services not exposed to the host?
4. Why does Docker DNS use service names instead of IP addresses?
5. Why is a reverse proxy the public entry point?

---

## Networking

1. How does `frontend` resolve the hostname `api`?
2. What Docker component provides service discovery?
3. What happens if the backend container IP changes?
4. Why is host-based routing preferred over different ports?

---

## TLS

1. Why is a Root CA required?
2. Why must certificates contain Subject Alternative Names?
3. What happens if the Root CA is not trusted?
4. Why is the private key never shared?

---

## Operations

1. What happens when a backend becomes unhealthy?
2. How does HAProxy detect backend failures?
3. Why should health endpoints be lightweight?
4. Which components become single points of failure in Sprint 01?

---

## Improvements

1. Which component should become highly available first?
2. What production features are still missing?
3. How would this architecture change in Kubernetes?
