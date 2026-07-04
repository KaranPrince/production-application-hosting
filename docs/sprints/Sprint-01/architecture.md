# Sprint 01 – Architecture

## Purpose

This document describes the architecture implemented during Sprint 01.

The objective is to establish the first production edge capable of securely routing requests to multiple backend services while maintaining a clear separation between public access and internal application communication.

---

# Architecture Overview

```text
                        User Browser
                              │
                 frontend.pah.local
                 api.pah.local
                 admin.pah.local
                              │
                        HTTPS (443)
                              │
                    TLS Termination
                              │
                              ▼
                    HAProxy Edge Proxy
        ┌─────────────────────┼─────────────────────┐
        │                     │                     │
        ▼                     ▼                     ▼
   Frontend               Flask API             Admin
     NGINX                  Flask               NGINX
        │                     │                     │
        └──────────── Docker Bridge Network ───────┘
```

---

# Request Flow

A request to `https://api.pah.local` follows this sequence:

1. The browser resolves `api.pah.local`.
2. The local hosts file maps the hostname to `127.0.0.1`.
3. The browser establishes a TLS connection with HAProxy.
4. HAProxy presents the server certificate signed by the internal Root CA.
5. The browser validates the certificate chain.
6. HAProxy decrypts the request (TLS termination).
7. HAProxy evaluates the `Host` header.
8. The request is forwarded to the Flask API backend.
9. The API generates the response.
10. HAProxy returns the response to the browser over HTTPS.

---

# Components

## Browser

Responsible for initiating HTTP requests, validating certificates, and rendering responses.

---

## Local DNS

The Windows hosts file provides local hostname resolution for development.

Example:

```text
127.0.0.1 frontend.pah.local
127.0.0.1 api.pah.local
127.0.0.1 admin.pah.local
```

---

## HAProxy

Responsibilities:

* TLS termination
* Host-based routing
* Health checking
* Backend selection
* Reverse proxy functionality

HAProxy is the only publicly exposed component.

Applications are never directly exposed.

---

## Docker Network

Docker provides:

* Isolated bridge network
* Automatic IP allocation
* Internal DNS
* Service discovery

Containers communicate using service names rather than IP addresses.

---

## Frontend

Technology:

* NGINX

Purpose:

* Static web application

---

## API

Technology:

* Flask

Endpoints:

* /
* /health
* /ready
* /version

Purpose:

* Demonstrate a production-style backend service.

---

## Admin

Technology:

* NGINX

Purpose:

* Administrative web interface.

---

# TLS Architecture

```text
Browser
     │
TLS Handshake
     │
     ▼
HAProxy
     │
HTTP
     │
Flask / NGINX
```

TLS is terminated at the edge.

Backend communication remains HTTP inside the trusted Docker network.

---

# Health Checks

HAProxy continuously performs HTTP health checks against each backend.

If a backend becomes unavailable:

* It is automatically marked DOWN.
* Traffic is no longer forwarded.
* Healthy services continue operating.

---

# Operational Visibility

The HAProxy statistics dashboard provides:

* Backend health
* Server status
* Request statistics
* Active sessions

This dashboard is intended for operators and platform engineers.

---

# Security

Sprint 01 introduces the following security mechanisms:

* HTTPS
* Internal Root Certificate Authority
* Certificate validation
* Subject Alternative Name (SAN)
* TLS termination
* Private Docker network
* Single public entry point

---

# Known Limitations

Current implementation intentionally keeps several areas simple.

Future improvements include:

* React frontend
* Gunicorn for Flask
* PostgreSQL
* Redis
* Keycloak
* Prometheus metrics
* Structured logging
* Kubernetes deployment
* cert-manager
* Public DNS

These enhancements will be introduced in later sprints as the business requirements evolve.
