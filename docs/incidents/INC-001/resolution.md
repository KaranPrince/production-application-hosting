# Resolution

Recovery procedure

1. Verify generated PKI.

```bash
tree infrastructure/pki
```

2. Generate certificates.

```bash
./scripts/update-certs.sh
```

3. Restart the platform.

```bash
./scripts/bootstrap.sh
```

4. Verify HTTPS.

```bash
./scripts/verify.sh
```

5. Confirm HAProxy is healthy.

```bash
docker ps

docker logs haproxy
```

---

# Verification

Frontend

```
https://frontend.pah.local
```

Admin

```
https://admin.pah.local
```

API

```
https://api.pah.local
```