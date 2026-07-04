# Sprint 01 – Troubleshooting

## Purpose

This document records common operational problems encountered during Sprint 01 together with their diagnosis and resolution.

---

# Problem

Browser displays:

```
NET::ERR_CERT_COMMON_NAME_INVALID
```

Cause

Certificate Subject Alternative Name missing.

Resolution

Regenerate certificate including all required SAN entries.

---

# Problem

Browser reports certificate not trusted.

Cause

Root CA not installed.

Resolution

Import Root CA into Trusted Root Certification Authorities.

---

# Problem

HTTP 503 returned by HAProxy.

Cause

Backend unavailable or health check failed.

Resolution

* Verify container status.
* Verify backend health.
* Restart affected service.

---

# Problem

HAProxy cannot reach backend.

Cause

Docker networking issue.

Resolution

Verify:

* Docker network
* Container attachment
* Service names
* Backend configuration

---

# Problem

Backend marked DOWN.

Cause

Health endpoint unavailable.

Resolution

Verify:

```
/health
```

returns HTTP 200.

---

# Problem

Wrong application displayed.

Cause

Host header mismatch.

Resolution

Verify:

* Browser hostname
* Hosts file
* HAProxy ACL configuration

---

# Useful Commands

```
docker ps

docker logs

docker network inspect

docker compose up

docker compose down

curl

openssl

tcpdump
```

---

# Escalation Path

1. Verify container.
2. Verify network.
3. Verify HAProxy.
4. Verify certificate.
5. Verify application.
6. Review logs.
7. Capture traffic.
