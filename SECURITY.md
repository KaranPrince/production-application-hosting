# Security Policy

## Security Philosophy

This repository demonstrates production security practices while remaining suitable for local development and learning.

## Supported Versions

| Version | Supported |
| ------- | --------- |
| v0.1.x  | ✅         |

## Reporting Vulnerabilities

If you discover a security issue within this repository, please open a responsible disclosure issue describing:

* The affected component
* Reproduction steps
* Impact
* Suggested mitigation

Do not publish sensitive information such as private keys or credentials.

## Secrets

The repository must never contain:

* Private keys
* Passwords
* API tokens
* Cloud credentials
* SSH keys
* Kubernetes Secrets
* Environment files containing secrets

## Certificates

Only public certificates required for verification may be committed.

Private keys must always remain excluded through `.gitignore`.

Certificates should be regenerated using the provided scripts.

## Future Security Improvements

Future releases will introduce:

* cert-manager
* Keycloak
* RBAC
* Network Policies
* Secret Management
* OAuth2 / OpenID Connect
* Automated certificate rotation
