# Changelog

All notable changes to this project will be documented in this file.

This project follows the principles of **Keep a Changelog** and **Semantic Versioning**.

---

# [0.1.0] - 2026-07-05

## Added

### Repository

* Initial repository structure
* Standardized documentation layout
* Sprint-based learning model
* Versioning strategy
* Release documentation
* Architecture Decision Record (ADR) framework
* Incident documentation framework
* Runbook framework

### Applications

* Frontend application
* Admin application
* Flask API application
* Dockerfiles for all services

### Infrastructure

* Docker Compose deployment
* Docker bridge networking
* HAProxy reverse proxy
* Host-based routing
* HTTPS termination
* Internal PKI
* Root Certificate Authority
* SAN certificates
* HAProxy statistics dashboard

### Operations

* Health endpoints
* Readiness endpoint
* Version endpoint
* Packet capture verification
* Operational runbooks

### Documentation

* Sprint-01 documentation
* Architecture documentation
* Implementation guide
* Troubleshooting guide
* Review questions
* Interview questions
* Lessons learned
* Release notes

### Incident Simulations

* Invalid SAN certificate
* Backend outage simulation
* HAProxy backend recovery

---

## Security

* Private keys excluded from Git
* Root CA documented
* TLS verification procedures documented
* Certificate generation process documented

---

## Verification

Successfully verified:

* HTTPS communication
* TLS certificate validation
* Docker networking
* Reverse proxy routing
* Health endpoints
* Browser access
* HAProxy dashboard
* Packet captures

---

## Known Limitations

Current implementation intentionally keeps the platform simple.

Limitations include:

* Single HAProxy instance
* Single Docker host
* Self-signed Certificate Authority
* No automatic certificate renewal
* No Kubernetes deployment
* No CI/CD pipeline
* No GitOps workflow
* No centralized observability

These limitations will be addressed in future releases.

---

## Next Release

Version **0.2.0** introduces:

* Production DNS
* CoreDNS
* DNS troubleshooting
* Packet capture analysis
* Split-horizon DNS
* Internal vs External name resolution
