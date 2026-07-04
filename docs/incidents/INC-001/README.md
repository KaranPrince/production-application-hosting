# INC-001 – Certificate Missing Subject Alternative Name

## Summary

The browser rejected the TLS certificate for `api.pah.local` with the error:

`NET::ERR_CERT_COMMON_NAME_INVALID`

---

## Impact

Users were unable to access the API over HTTPS.

Frontend and Admin services continued to operate normally.

---

## Root Cause

The regenerated server certificate did not include `api.pah.local` in the Subject Alternative Name (SAN) extension.

Modern browsers validate SAN entries instead of relying only on the Common Name.

---

## Resolution

* Updated the OpenSSL configuration.
* Added the missing SAN entry.
* Regenerated the certificate.
* Updated the PEM bundle.
* Restarted HAProxy.
* Verified browser trust.

---

## Lessons

* Always verify SAN entries before issuing certificates.
* Test certificates using `openssl` before deployment.
* Automate certificate generation where possible.

---

## Status

Resolved
