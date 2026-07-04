# Runbook – HAProxy Operations

## Purpose

Provide operational procedures for managing the HAProxy edge service.

---

## Verify Service

```bash
docker ps
```

Verify the `haproxy` container is running.

---

## View Logs

```bash
docker logs -f haproxy
```

---

## Restart

```bash
docker compose restart haproxy
```

---

## Reload Configuration

After modifying `haproxy.cfg`:

```bash
docker compose restart haproxy
```

---

## Verify Routing

```bash
curl -H "Host: frontend.pah.local" http://localhost

curl -k https://frontend.pah.local
```

---

## Verify Health Checks

Open:

```text
http://localhost:8404
```

Verify all backends are UP.

---

## Backend Failure

If a backend is DOWN:

1. Verify container status.
2. Check application logs.
3. Confirm Docker network connectivity.
4. Verify HAProxy backend configuration.
5. Restart the backend if required.

---

## Certificate Renewal

1. Generate new CSR.
2. Sign certificate.
3. Replace PEM bundle.
4. Restart HAProxy.
5. Verify HTTPS.
6. Verify certificate validity.

---

## Operational Checklist

* HAProxy running.
* Dashboard accessible.
* HTTPS working.
* Health checks passing.
* Backend routing verified.
* No certificate warnings.
