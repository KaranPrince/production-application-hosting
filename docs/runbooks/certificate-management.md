# Certificate Management Runbook

## Purpose

This runbook describes how certificates are generated, rotated and verified for the local Production Application Hosting laboratory.

---

# Components

- Root CA
- Server Certificate
- PEM Bundle
- HAProxy

---

# Directory Structure

```
infrastructure/pki/

config/
generated/
root-ca/
server/
scripts/
```

---

# Generate Certificates

Run

```bash
./scripts/update-certs.sh
```

or

```bash
./scripts/bootstrap.sh
```

if certificates do not exist.

---

# Generated Files

```
rootCA.key
rootCA.crt

pah.local.key
pah.local.crt

pah.local.pem
```

---

# Verification

Verify certificate

```bash
openssl x509 -in infrastructure/pki/server/certs/pah.local.crt -text -noout
```

Verify SAN

```bash
openssl x509 \
-in infrastructure/pki/server/certs/pah.local.crt \
-text \
-noout | grep DNS
```

Verify HTTPS

```bash
./scripts/verify.sh
```

---

# Rotation

Certificates can be rotated using

```bash
./scripts/update-certs.sh
```

This will

- regenerate certificates
- recreate the PEM bundle
- restart HAProxy
- verify HTTPS

---

# Common Issues

## Certificate Not Trusted

Import

```
rootCA.crt
```

into the operating system trust store.

---

## ERR_CERT_COMMON_NAME_INVALID

Check

- Common Name
- Subject Alternative Names

---

## HAProxy Cannot Load PEM

Verify

```
infrastructure/pki/generated/pah.local.pem
```

exists.

---

# Recovery

Run

```bash
./scripts/update-certs.sh
```

If necessary

```bash
./scripts/reset.sh
```