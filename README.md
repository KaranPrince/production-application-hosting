# Production Application Hosting

> **Learn How Real Applications Go Live in Production**
>
> A hands-on platform engineering journey that teaches how modern applications are designed, deployed, secured, monitored, and operated in production—from the first DNS lookup in a browser to globally distributed cloud-native platforms.

---

## Project Vision

Most DevOps resources teach individual technologies such as Docker, Kubernetes, Terraform, Jenkins, or cloud services in isolation.

Real production environments do not work that way.

A production application is the result of dozens of infrastructure components working together:

* DNS
* TLS
* Reverse Proxies
* Load Balancers
* Firewalls
* Networking
* Containers
* Kubernetes
* Storage
* Authentication
* Monitoring
* CI/CD
* GitOps
* Cloud Infrastructure
* Security
* Operations

Understanding individual tools is useful.

Understanding **how they work together** is what separates a Platform Engineer from someone who only knows individual technologies.

This repository exists to bridge that gap.

Rather than learning isolated tools, we progressively build an entire production platform exactly as it evolves inside a real company.

Every sprint adds another production capability while preserving everything that has already been built.

By the end of this repository, you will understand how a production request travels from a user's browser to an application running inside Kubernetes, how that platform is secured, monitored, scaled, and operated, and how engineering teams troubleshoot failures in real environments.

---

# Repository Goals

This repository aims to teach:

* End-to-end production application hosting
* Platform Engineering
* Infrastructure Architecture
* DevOps Engineering
* Site Reliability Engineering (SRE)
* Cloud Infrastructure
* Production Networking
* Kubernetes Operations
* Production Security
* Production Troubleshooting

The objective is not simply to deploy applications.

The objective is to understand **why every production component exists**, how it interacts with other components, how it fails, and how it is operated in production.

---

# Who This Repository Is For

This repository is designed for engineers who already understand basic software development or DevOps concepts and want to move towards production infrastructure engineering.

Examples include:

* DevOps Engineers
* Platform Engineers
* Site Reliability Engineers (SRE)
* Cloud Engineers
* Infrastructure Engineers
* Kubernetes Engineers
* Solutions Architects
* Technical Leads
* Students preparing for production engineering roles

---

# What Makes This Repository Different

Most repositories teach technologies independently.

For example:

* Learn Docker
* Learn Kubernetes
* Learn Terraform
* Learn Jenkins
* Learn Linux

This repository teaches something different.

It teaches how these technologies work together to operate a production platform.

Every sprint builds on the previous one.

Nothing is replaced without understanding why the replacement exists.

For example:

Docker Compose evolves into Kubernetes.

HAProxy evolves into Kubernetes Ingress and Gateway API.

Docker networking evolves into Container Network Interfaces (CNI).

Manual certificates evolve into automated certificate management.

The platform grows exactly as a real engineering organization would evolve it.

---

# Learning Philosophy

Every sprint follows the same engineering workflow.

```text
Learn
   ↓
Design
   ↓
Build
   ↓
Verify
   ↓
Break
   ↓
Troubleshoot
   ↓
Document
   ↓
Release
```

Understanding why systems fail is just as important as understanding how to build them.

Every production feature introduced in this repository is intentionally broken, debugged, documented, and improved.

This reflects how real engineering teams operate production systems.

---

# Repository Principles

The following principles guide every implementation in this repository.

## Production First

Where practical, production-grade software is used instead of simplified demonstrations.

Examples include:

* HAProxy
* NGINX
* Flask
* Docker
* Kubernetes
* Prometheus
* Grafana
* OpenSearch
* Traefik
* PostgreSQL
* Redis

---

## Everything Must Be Reproducible

Every sprint can be reproduced from a clean repository.

Manual configuration is avoided whenever possible.

Automation is introduced as the platform evolves.

---

## Learn by Building

Every topic is implemented using working infrastructure.

Examples include:

* DNS servers
* Certificate Authorities
* Reverse Proxies
* Load Balancers
* Kubernetes clusters
* Monitoring stacks
* Authentication systems

---

## Learn by Breaking

Every sprint intentionally introduces failures.

Examples include:

* Invalid TLS certificates
* DNS failures
* Backend outages
* Health check failures
* Routing failures
* Certificate errors
* Network failures

Each incident is investigated and documented before continuing.

---

## Documentation Is Part of the Product

Documentation is treated as an engineering deliverable.

Every sprint includes:

* Architecture
* Implementation
* Verification
* Troubleshooting
* Lessons Learned
* Incident Reports
* Runbooks
* Release Notes

No sprint is considered complete until both the platform and its documentation are production-ready.

---

# Long-Term Goal

By the end of this project, the repository will evolve from a small Docker Compose deployment into a complete production platform incorporating:

* Production DNS
* High Availability
* Reverse Proxies
* Load Balancing
* Cloud Networking
* Kubernetes
* GitOps
* Observability
* Authentication
* Storage
* Security
* Multi-Region Architecture
* Production Operations

The final result is intended to serve as both a comprehensive learning resource and a portfolio-quality demonstration of production platform engineering.

---

# Repository Structure

The repository is organized to mirror the way real platform engineering teams separate infrastructure, applications, documentation, operations, and release artifacts.

```text
production-application-hosting/
│
├── applications/          # Production applications
├── infrastructure/        # Platform infrastructure
├── docs/                  # Documentation
├── assets/                # Images, diagrams, packet captures
├── scripts/               # Automation scripts
├── templates/             # Reusable templates
├── tools/                 # Helper utilities
│
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── SECURITY.md
├── VERSION
└── Makefile
```

The repository is intentionally designed to evolve naturally as new production capabilities are introduced.

No folder exists without a long-term purpose.

---

# Repository Organization

## applications/

Contains every production application used throughout the course.

Examples include:

* Frontend
* API
* Authentication Service
* Workers
* Shared Components

Each application eventually follows a common structure.

```text
applications/
└── api/
    ├── src/
    ├── tests/
    ├── Dockerfile
    ├── README.md
    └── requirements.txt
```

---

## infrastructure/

Contains the platform itself.

This directory represents everything that normally belongs to an Infrastructure or Platform Engineering team.

Examples:

* Docker Compose
* HAProxy
* Kubernetes
* PKI
* DNS
* Observability
* Security
* Terraform
* Networking

As the course progresses this becomes the production platform.

---

## docs/

Contains documentation for both engineers and learners.

Documentation is separated into logical categories.

Examples:

* Sprint Guides
* Architecture
* ADRs
* Incident Reports
* Runbooks
* Releases
* Roadmaps

Documentation evolves together with the platform.

---

## assets/

Contains supporting artifacts.

Examples:

* Architecture diagrams
* Draw.io source files
* Packet captures
* Screenshots

These files are referenced throughout the documentation.

---

## scripts/

Contains repository automation.

Examples include:

* Bootstrap scripts
* Certificate generation
* Validation scripts
* Helper utilities

The long-term goal is to automate every repetitive task.

---

# Sprint Roadmap

Each sprint introduces one production capability.

Every sprint builds directly on the previous one.

| Sprint    | Theme                            | Status  |
| --------- | -------------------------------- | ------- |
| Sprint 00 | Platform Foundation              | ✅       |
| Sprint 01 | Production Edge                  | ✅       |
| Sprint 02 | Production DNS & Name Resolution | 🚧      |
| Sprint 03 | High Availability                | Planned |
| Sprint 04 | Load Balancing                   | Planned |
| Sprint 05 | Internet Routing                 | Planned |
| Sprint 06 | Production Networking            | Planned |
| Sprint 07 | Kubernetes Platform              | Planned |
| Sprint 08 | Authentication Platform          | Planned |
| Sprint 09 | Production Storage               | Planned |
| Sprint 10 | Observability Platform           | Planned |
| Sprint 11 | CI/CD Platform                   | Planned |
| Sprint 12 | GitOps Platform                  | Planned |
| Sprint 13 | Platform Security                | Planned |
| Sprint 14 | Cloud Architecture               | Planned |
| Sprint 15 | Multi-Region Platform            | Planned |

Future sprints may be added as the platform evolves.

---

# Platform Evolution

The repository follows the same growth pattern as a real engineering organization.

```text
Platform Foundation
        │
        ▼
Production Edge
        │
        ▼
DNS
        │
        ▼
TLS
        │
        ▼
Load Balancing
        │
        ▼
High Availability
        │
        ▼
Containers
        │
        ▼
Kubernetes
        │
        ▼
Observability
        │
        ▼
CI/CD
        │
        ▼
GitOps
        │
        ▼
Cloud
        │
        ▼
Multi-Region
        │
        ▼
Production Platform
```

The objective is not simply to learn technologies.

The objective is to understand how production platforms evolve over time.

---

# Technology Stack

The technologies are grouped by production layer rather than by vendor.

## Internet Layer

* DNS
* HTTP
* HTTPS
* TLS
* TCP/IP
* Routing

---

## Edge Layer

* HAProxy
* NGINX
* Traefik

---

## Runtime Layer

* Docker
* Docker Compose
* Kubernetes
* containerd

---

## Networking

* Bridge Networking
* Overlay Networking
* CNI
* CoreDNS
* Gateway API

---

## Platform Services

* PostgreSQL
* Redis
* MinIO
* RabbitMQ

---

## Observability

* Prometheus
* Grafana
* Loki
* OpenSearch
* Fluent Bit
* OpenTelemetry

---

## Security

* PKI
* TLS
* OAuth2
* OIDC
* Keycloak
* Network Policies
* RBAC

---

## Infrastructure

* Terraform
* Docker Desktop
* Kind
* k3d
* Linux
* WSL2

---

## Cloud Platforms

* AWS
* Azure
* On-Premises

Every technology is introduced only when the platform reaches the point where that capability is needed.

This mirrors the evolution of real production systems instead of introducing tools in isolation.

---

# Current Platform Status

The repository evolves through incremental releases. Each release introduces a production capability while preserving compatibility with previous implementations.

| Release |   Status   | Description                      |
| ------- | :--------: | -------------------------------- |
| v0.1.0  |  ✅ Current | Production Edge                  |
| v0.2.0  | 🚧 Planned | Production DNS & Name Resolution |
| v0.3.0  | 📅 Planned | High Availability                |
| v0.4.0  | 📅 Planned | Production Load Balancing        |
| v0.5.0  | 📅 Planned | Production Networking            |
| v1.0.0  |  🎯 Target | Complete Production Platform     |

---

# Current Architecture

The current implementation represents a small production deployment where multiple applications are exposed through a single secure edge.

```text
                        Internet
                            │
                            │
                    Browser / curl
                            │
                    HTTPS (TLS 1.3)
                            │
                            ▼
                    ┌─────────────────┐
                    │     HAProxy     │
                    │ Reverse Proxy   │
                    │ TLS Termination │
                    └────────┬────────┘
                             │
        ┌────────────────────┼────────────────────┐
        │                    │                    │
        ▼                    ▼                    ▼
   frontend              api (Flask)          admin
   Container             Container            Container
        │                    │                    │
        └──────────── Docker Bridge Network ─────┘
```

Current implementation includes:

* Docker Compose orchestration
* Internal Docker networking
* HAProxy reverse proxy
* Host-based routing
* TLS termination
* Internal Root Certificate Authority
* Flask API service
* Health checks
* Operational dashboard
* Packet capture verification

---

# Features Implemented

## Platform

* Multi-container deployment
* Docker bridge networking
* Service discovery
* Centralized reverse proxy
* Host-based routing

---

## Security

* Private Root Certificate Authority
* TLS certificates
* Subject Alternative Names (SAN)
* HTTPS termination
* Certificate verification

---

## Operations

* Health endpoints
* HAProxy statistics dashboard
* Incident simulations
* Verification procedures
* Operational runbooks

---

## Documentation

* Sprint guides
* Architecture Decision Records (ADRs)
* Incident reports
* Troubleshooting guides
* Release documentation

---

# Quick Start

## Prerequisites

Install the following software:

* Docker Desktop
* Docker Compose
* Git
* OpenSSL
* WSL2 (Windows)
* curl
* Wireshark (optional)
* tcpdump (Linux/WSL)

---

## Clone the Repository

```bash
git clone https://github.com/KaranPrince/production-application-hosting.git

cd production-application-hosting
```

---

## Build the Platform

```bash
docker compose -f infrastructure/edge/docker/docker-compose.yaml build
```

---

## Start the Platform

```bash
docker compose \
-f infrastructure/edge/docker/docker-compose.yaml \
up -d
```

---

## Verify Containers

```bash
docker ps
```

---

## Verify HTTPS

```bash
curl https://frontend.pah.local -k

curl https://api.pah.local -k

curl https://admin.pah.local -k
```

---

## Verify Health

```bash
curl https://api.pah.local/health -k

curl https://api.pah.local/ready -k

curl https://api.pah.local/version -k
```

---

## View HAProxy Dashboard

Open:

```text
http://localhost:8404
```

Verify all backends report **UP**.

---

## Stop the Platform

```bash
docker compose \
-f infrastructure/edge/docker/docker-compose.yaml \
down
```

---

# Repository Standards

Every sprint must satisfy the following engineering standards before a release is created.

## Implementation

* Production software
* Reproducible builds
* Version-controlled configuration
* Infrastructure as Code where practical

---

## Documentation

Every sprint includes:

* README
* Architecture
* Implementation
* Verification
* Troubleshooting
* Lessons Learned
* Interview Questions
* Incident Reports
* Release Notes

---

## Operations

Every production component must have:

* Verification steps
* Health checks
* Operational runbooks
* Failure scenarios
* Recovery procedures

---

## Security

The repository never stores:

* Private keys
* Passwords
* Secrets
* Cloud credentials
* API keys

Generated artifacts are recreated through scripts and excluded using `.gitignore`.

---

# Production Engineering Workflow

Every feature follows the same lifecycle.

```text
Requirement
      │
      ▼
Architecture
      │
      ▼
Implementation
      │
      ▼
Verification
      │
      ▼
Failure Simulation
      │
      ▼
Troubleshooting
      │
      ▼
Documentation
      │
      ▼
Release
```

This workflow reflects the practices followed by mature Platform Engineering and Site Reliability Engineering teams.

---

# Release Strategy

The repository follows incremental releases.

Each release introduces a production capability while maintaining compatibility with previous implementations.

| Version | Milestone                        | Status     |
| ------- | -------------------------------- | ---------- |
| v0.1.0  | Production Edge                  | ✅ Released |
| v0.2.0  | Production DNS & Name Resolution | 🚧 Planned |
| v0.3.0  | High Availability                | 📅 Planned |
| v0.4.0  | Production Load Balancing        | 📅 Planned |
| v0.5.0  | Production Networking            | 📅 Planned |
| v0.6.0  | Kubernetes Foundation            | 📅 Planned |
| v0.7.0  | Kubernetes Networking            | 📅 Planned |
| v0.8.0  | Observability Platform           | 📅 Planned |
| v0.9.0  | GitOps Platform                  | 📅 Planned |
| v1.0.0  | Production Application Platform  | 🎯 Target  |

Each release includes:

* Working implementation
* Architecture documentation
* Verification guide
* Troubleshooting guide
* Incident reports
* Operational runbooks
* Release notes

---

# Repository Status

Current Release

```text
Version : v0.1.0

Sprint 00 : Complete

Sprint 01 : Complete

Sprint 02 : Planned
```

Current Platform Features

* Docker Compose platform
* HAProxy reverse proxy
* TLS termination
* Internal Certificate Authority
* Host-based routing
* Flask API
* Health endpoints
* Operational dashboard
* Packet capture verification
* Incident simulations
* Architecture documentation
* Operational runbooks

---

# Future Roadmap

The repository will continue evolving toward a complete production platform.

Planned capabilities include:

## Networking

* Production DNS
* CoreDNS
* Split Horizon DNS
* External DNS
* Gateway API

---

## Platform

* Kubernetes
* Helm
* GitOps
* Argo CD
* Horizontal Pod Autoscaler
* Service Mesh

---

## Security

* cert-manager
* Keycloak
* OAuth2
* OIDC
* RBAC
* Network Policies
* Secrets Management

---

## Observability

* Prometheus
* Grafana
* Loki
* OpenSearch
* Fluent Bit
* OpenTelemetry
* Alertmanager

---

## Cloud

* AWS
* Azure
* Terraform
* Multi-region deployments
* Disaster Recovery
* Backup & Restore

---

## Operations

* CI/CD
* Progressive Delivery
* Blue/Green Deployments
* Canary Deployments
* Chaos Engineering
* Incident Response
* Production Runbooks

---

# Contributing

Contributions are welcome.

Before contributing:

1. Read `CONTRIBUTING.md`.
2. Follow the documented repository standards.
3. Keep implementations reproducible.
4. Update documentation alongside code changes.
5. Verify all changes before opening a pull request.

Every contribution should improve both the implementation and the learning experience.

---

# Repository Standards

The following principles apply to every change in this repository.

* Build before documenting.
* Verify before committing.
* Document before releasing.
* Automate repetitive tasks.
* Prefer production-grade solutions over toy examples.
* Record architectural decisions.
* Record operational incidents.
* Keep the repository reproducible from a clean clone.

---

# License

This repository is released under the MIT License.

See the `LICENSE` file for details.

---

# Acknowledgements

This project is inspired by the day-to-day work performed by Platform Engineering, DevOps, Site Reliability Engineering (SRE), Cloud Infrastructure, and Operations teams responsible for designing and operating production systems.

The implementation intentionally mirrors real production practices while remaining approachable for engineers who want to understand how modern platforms are built and evolved.

---

# Final Goal

The goal of this repository is not simply to learn tools.

The goal is to understand how real production platforms are designed, built, secured, operated, monitored, scaled, and continuously improved.

By completing every sprint, readers will gain practical experience building a platform that evolves from a single reverse proxy into a complete cloud-native production environment.

If this repository helps you better understand production engineering, consider contributing improvements so that others can learn from the same journey.

Happy Building! 🚀
