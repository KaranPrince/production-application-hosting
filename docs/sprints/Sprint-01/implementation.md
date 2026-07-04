# Sprint 01 – Implementation

## Objective

Implement the first production edge capable of hosting multiple applications behind a single reverse proxy using Docker, HAProxy and HTTPS.

---

# Components Implemented

* Docker Engine
* Docker Compose
* Docker Bridge Network
* HAProxy
* Internal PKI
* TLS Termination
* Flask API
* NGINX Frontend
* NGINX Admin
* Health Checks
* HAProxy Statistics Dashboard

---

# Repository Layout

```
applications/
infrastructure/
docs/
assets/
```

---

# Build Process

## Step 1

Build application images.

* Frontend
* API
* Admin

---

## Step 2

Create Docker network.

```
pah-network
```

---

## Step 3

Deploy containers.

* frontend
* api
* admin
* haproxy

---

## Step 4

Configure host-based routing.

```
frontend.pah.local

api.pah.local

admin.pah.local
```

---

## Step 5

Generate Root Certificate Authority.

---

## Step 6

Generate server certificate with Subject Alternative Names.

---

## Step 7

Configure HAProxy TLS termination.

---

## Step 8

Configure backend health checks.

---

## Step 9

Enable HAProxy statistics dashboard.

---

## Step 10

Validate browser access.

---

## Final Components

| Component      | Status   |
| -------------- | -------- |
| Docker Images  | Complete |
| Docker Compose | Complete |
| Docker Network | Complete |
| HAProxy        | Complete |
| TLS            | Complete |
| PKI            | Complete |
| Flask API      | Complete |
| Health Checks  | Complete |
| Dashboard      | Complete |

---

## Deliverables

Sprint 01 produces the first operational production edge for the platform and establishes the baseline architecture for all future sprints.
