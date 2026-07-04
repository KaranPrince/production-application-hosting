# INC-002 – Backend Service Failure

## Summary

The API backend container was intentionally stopped to verify HAProxy health checks.

---

## Impact

Requests to the API returned:

`HTTP 503 Service Unavailable`

Frontend and Admin services remained available.

---

## Root Cause

The backend application was unavailable.

HAProxy health checks correctly marked the backend as DOWN and removed it from service.

---

## Resolution

* Started the API container.
* HAProxy automatically detected recovery.
* Backend status changed from DOWN to UP.
* Traffic resumed without HAProxy restart.

---

## Lessons

* Health checks reduce failed requests.
* Reverse proxies should never route traffic to unhealthy backends.
* Operational dashboards simplify incident response.

---

## Status

Resolved
