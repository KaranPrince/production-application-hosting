# Sprint 01 – Verification

## Objective

Verify that every implemented component functions correctly before release.

---

# Docker

Verification completed:

* Images built successfully.
* Containers running.
* Docker network created.

Verified using:

* docker images
* docker ps
* docker network inspect

---

# Networking

Verified:

* Automatic IP assignment.
* Docker DNS.
* Container-to-container communication.

Validation:

* frontend → api
* frontend → admin

---

# HAProxy

Verified:

* Reverse proxy operational.
* Host-based routing operational.
* Default backend operational.

Validation:

* frontend.pah.local
* api.pah.local
* admin.pah.local

---

# TLS

Verified:

* Root CA generated.
* Root CA imported.
* HTTPS working.
* Browser trust established.
* Certificate chain validated.

---

# API

Verified endpoints:

```
/

health

ready

version
```

Expected responses received successfully.

---

# Health Checks

Verified:

* Backend monitoring enabled.
* Automatic UP detection.
* Automatic DOWN detection.

---

# Statistics Dashboard

Verified:

```
http://localhost:8404
```

Dashboard displayed backend status correctly.

---

# Failure Simulation

Scenario 1

Backend stopped.

Expected:

HTTP 503

Observed:

PASS

---

Scenario 2

Certificate SAN removed.

Expected:

NET::ERR_CERT_COMMON_NAME_INVALID

Observed:

PASS

---

# Packet Capture

TLS handshake successfully captured using tcpdump.

Capture stored under:

```
assets/packet-captures/
```

---

# Sprint Status

All verification tests completed successfully.

Sprint implementation is ready for production release.
