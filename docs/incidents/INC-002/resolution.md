# Resolution

1. Update

```
server-openssl.cnf
```

2. Restore all required SAN entries.

3. Regenerate PKI.

```bash
./scripts/update-certs.sh
```

4. Restart the platform.

```bash
./scripts/bootstrap.sh
```

5. Verify.

```bash
./scripts/verify.sh
```

---

# Verification

The following hosts must present a valid certificate.

- frontend.pah.local
- admin.pah.local
- api.pah.local