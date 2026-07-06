# ADR-001: Repository Structure

- Status: Accepted
- Date: 2026-07-06
- Decision Makers: Repository Maintainer

---

# Context

This repository is intended to evolve from a small Docker Compose laboratory into a production-grade application hosting platform covering networking, DNS, TLS, reverse proxies, Kubernetes, GitOps, observability, security, and cloud infrastructure.

A flat repository structure would quickly become difficult to navigate as additional technologies and sprints are introduced.

---

# Decision

The repository is organized using a domain-driven structure.

```
production-application-hosting/

applications/
assets/
docs/
examples/
infrastructure/
scripts/
templates/
tools/
```

Each top-level directory has a single responsibility.

| Directory | Purpose |
|------------|---------|
| applications | Application source code |
| infrastructure | Infrastructure configuration |
| docs | Documentation |
| assets | Images, diagrams and captures |
| examples | Reusable examples |
| scripts | Operational automation |
| templates | Reusable templates |
| tools | Supporting utilities |

---

# Alternatives Considered

## Flat Repository

Pros

- Simple initially

Cons

- Difficult to navigate
- Poor scalability
- Documentation becomes fragmented

---

## Technology-based Layout

Pros

- Easy for small demonstrations

Cons

- Features become scattered
- Difficult to follow learning progression

---

# Consequences

Advantages

- Clear ownership
- Scalable
- Easy navigation
- Documentation remains organized
- Suitable for long-term maintenance

Trade-offs

- Slightly more directories
- Requires documentation discipline

---

# Future Evolution

This repository structure is expected to remain unchanged through future releases.

New technologies should be introduced inside existing domains instead of creating unnecessary top-level directories.

---

# References

- Repository README
- Sprint-00