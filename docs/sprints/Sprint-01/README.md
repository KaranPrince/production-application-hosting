# Sprint 01 – Production Edge Platform

## Sprint Overview

Sprint 01 introduces the first production-ready edge platform for the **Production Application Hosting** project.

The objective of this sprint is to move from a single standalone web server to a small production-style platform where multiple applications are served behind a single entry point using HAProxy. The platform is secured with HTTPS using an internally managed Public Key Infrastructure (PKI) and demonstrates common production operational practices such as health checks, service discovery, TLS termination, and incident simulation.

This sprint establishes the architectural foundation that every future sprint will build upon.

---

# Business Requirement

The company is preparing to launch its first public-facing application.

Requirements:

* Host multiple applications.
* Expose only one public entry point.
* Route traffic based on the requested hostname.
* Secure all traffic using HTTPS.
* Validate backend health.
* Simulate production failures.
* Document implementation and operational procedures.

---

# Objectives

During this sprint we implemented:

* Docker-based application hosting.
* Docker bridge networking.
* Docker DNS-based service discovery.
* HAProxy as the edge reverse proxy.
* Host-based routing.
* Internal Root Certificate Authority.
* TLS termination.
* Local domain resolution.
* Backend health checks.
* HAProxy statistics dashboard.
* Flask-based API service.
* Packet capture of the TLS handshake.
* Production incident simulation.

---

# Final Architecture

```text
                        Browser
                            │
        frontend.pah.local / api.pah.local / admin.pah.local
                            │
                     HTTPS (TLS)
                            │
                            ▼
                  HAProxy Edge Reverse Proxy
             ┌──────────────┼──────────────┐
             ▼              ▼              ▼
      Frontend         Flask API        Admin
                            │
                     Docker Network
```

---

# Technologies Used

| Component         | Technology            |
| ----------------- | --------------------- |
| Reverse Proxy     | HAProxy               |
| Frontend          | NGINX                 |
| API               | Flask                 |
| Container Runtime | Docker                |
| Orchestration     | Docker Compose        |
| TLS               | OpenSSL               |
| Internal PKI      | Self-managed Root CA  |
| Networking        | Docker Bridge Network |

---

# Production Concepts Introduced

* Reverse Proxy
* TLS Termination
* Internal PKI
* Docker Networking
* Service Discovery
* Host-Based Routing
* Health Checks
* Certificate Validation
* TLS Handshake
* Backend Availability Monitoring

---

# Incidents Simulated

## Incident 001

Certificate missing Subject Alternative Name (SAN).

Observed browser error:

```
NET::ERR_CERT_COMMON_NAME_INVALID
```

---

## Incident 002

Backend API service failure.

Observed result:

* HAProxy detected backend failure.
* API backend marked DOWN.
* Traffic returned HTTP 503.
* Remaining services continued operating normally.

---

# Deliverables

At the completion of Sprint 01 the platform provides:

* Multiple applications behind a single edge proxy.
* HTTPS secured communication.
* Production-style routing.
* Health monitoring.
* Operational dashboard.
* Packet capture for protocol analysis.
* Incident documentation.
* Runbooks.
* Architecture documentation.

---

# Lessons

Sprint 01 demonstrates that production platforms are not simply web servers.

Modern production systems rely on multiple infrastructure components working together:

* Networking
* DNS
* TLS
* Reverse Proxy
* Health Monitoring
* Operational Visibility

This sprint establishes the baseline architecture that future sprints will extend rather than replace.

---

# Next Sprint

Sprint 02 introduces production DNS.

Topics include:

* Recursive DNS
* Root Servers
* TLD Servers
* Authoritative DNS
* A Records
* CNAME Records
* TTL
* Split-Horizon DNS
* Anycast DNS
* AWS Route 53
* Azure DNS

The platform built during Sprint 01 will remain unchanged while DNS becomes the new entry point into the system.
