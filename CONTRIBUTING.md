# Contributing Guide

Thank you for your interest in contributing to this repository.

The objective of this project is to provide a production-focused learning platform for Platform Engineering and DevOps.

## Repository Principles

Every contribution should:

* Improve the implementation.
* Improve the documentation.
* Remain reproducible.
* Follow production engineering practices.

## Branch Naming

Use descriptive branch names.

Examples:

```
feature/sprint-02-dns

feature/haproxy-health-checks

bugfix/tls-san-validation

docs/readme-update
```

## Commit Messages

Follow Conventional Commits.

Examples:

```
feat(edge): add HAProxy reverse proxy

feat(dns): introduce CoreDNS

fix(tls): correct SAN configuration

docs(readme): update architecture overview
```

## Pull Requests

Every Pull Request should include:

* Purpose
* Implementation summary
* Verification steps
* Screenshots (if applicable)
* Documentation updates

## Documentation

Implementation and documentation should evolve together.

A sprint is not complete until both have been updated.

## Testing

Before submitting changes:

* Verify containers start successfully.
* Verify HTTPS works.
* Verify health endpoints.
* Verify documentation reflects implementation.

## Questions

If you discover an issue, create an Incident Report or open an issue describing:

* Expected behavior
* Actual behavior
* Steps to reproduce
* Proposed solution
