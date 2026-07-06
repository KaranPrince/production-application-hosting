# Root Cause Analysis

# Incident

Browser displayed

```
ERR_CERT_COMMON_NAME_INVALID
```

for

```
https://api.pah.local
```

---

# Summary

The API hostname was intentionally removed from the Subject Alternative Name (SAN) list while testing certificate validation.

The browser correctly rejected the certificate because the requested hostname did not match any SAN entry.

---

# Technical Cause

The OpenSSL configuration omitted

```
DNS:api.pah.local
```

from the generated server certificate.

Modern browsers validate SAN entries instead of relying solely on the Common Name.

---

# Impact

- API HTTPS unavailable
- Browser warning displayed
- TLS validation failed

---

# Detection

Browser certificate inspection.

OpenSSL verification.

---

# Resolution

- Restored SAN entry.
- Regenerated certificate.
- Rebuilt PEM bundle.
- Restarted HAProxy.
- Verified HTTPS.