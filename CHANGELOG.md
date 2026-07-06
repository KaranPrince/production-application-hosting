# Changelog

All notable changes to this project will be documented in this file.

This project follows **Semantic Versioning** and is inspired by the **Keep a Changelog** format.

---

## [0.1.0] - 2026-07-06

### Added

* Initial repository foundation
* Domain-driven repository structure
* Docker Compose based local platform
* HAProxy reverse proxy
* HTTPS using a custom Root Certificate Authority
* Automated PKI generation
* Flask-based API service
* Static Frontend service
* Static Admin service
* Bootstrap automation
* Platform verification scripts
* Platform operational scripts
* Architecture Decision Records (ADR)
* Sprint-00 documentation
* Sprint-01 documentation
* Initial runbooks
* Release documentation

### Changed

* Refactored automation scripts into reusable libraries
* Improved bootstrap workflow
* Standardized repository layout
* Improved documentation consistency

### Fixed

* PKI generation workflow
* HAProxy PEM loading
* Bootstrap verification recursion
* Certificate regeneration process

### Security

* Generated certificates excluded from version control
* Private keys excluded from version control
* Local Root CA used for development only

---

## Future Releases

* v0.2.0 — DNS Fundamentals
* v0.3.0 — Load Balancing
* v0.4.0 — Reverse Proxy
* v0.5.0 — Application Runtime
* v0.6.0 — Databases
* v0.7.0 — Caching
* v0.8.0 — Messaging
* v0.9.0 — Observability
* v1.0.0 — Production Application Platform
