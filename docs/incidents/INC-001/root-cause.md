# Root Cause Analysis

# Incident

HAProxy failed to start after replacing the TLS certificate.

---

# Summary

The HAProxy container continuously restarted because the configured PEM bundle could not be loaded.

The configuration referenced:

```
/usr/local/etc/haproxy/certs/pah.local.pem
```

but the file did not exist inside the mounted directory.

---

# Technical Cause

The generated PEM bundle had been removed from the repository during cleanup before publishing.

HAProxy validates all configured certificates during startup.

Since the required PEM file was missing, configuration parsing failed and HAProxy terminated immediately.

---

# Impact

- HTTPS unavailable
- Reverse proxy unavailable
- Frontend inaccessible
- Admin inaccessible
- API inaccessible

---

# Detection

Observed using

```bash
docker logs haproxy
```

Error

```
unable to stat SSL certificate

pah.local.pem

No such file or directory
```

---

# Resolution

- Regenerated PKI
- Generated new PEM bundle
- Restarted HAProxy
- Verified HTTPS

---

# Lessons

Operational assets should always be reproducible from source.

Generated artifacts should never be committed to Git.