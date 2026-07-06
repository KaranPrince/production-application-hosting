# Security Policy

## Supported Version

| Version | Supported |
| ------- | --------- |
| v0.1.x  | ✅         |

## Reporting Security Issues

If you discover a security issue, please open a private security report instead of publishing the details publicly.

Include:

* Description
* Steps to reproduce
* Potential impact
* Suggested remediation (if known)

## Repository Security

The repository intentionally excludes:

* Private keys
* Generated certificates
* Sensitive credentials
* Secrets
* Environment-specific artifacts

## Certificates

The included PKI is intended **only for local development and learning**.

Do not use the generated certificates or Root CA in production environments.

## Dependencies

Keep container images and application dependencies updated as future releases are published.

## Responsible Disclosure

Please allow maintainers reasonable time to investigate and resolve reported vulnerabilities before public disclosure.
