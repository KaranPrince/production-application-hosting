# Sprint 01 – Lessons Learned

## Technical Lessons

* Docker networking provides automatic service discovery.
* Reverse proxies should be the only public entry point.
* TLS termination simplifies certificate management.
* Health checks improve platform resilience.
* Internal PKI mirrors enterprise environments.
* Host-based routing enables multiple applications behind one IP.
* Backend services should never be directly exposed.
* Browser certificate validation depends on Subject Alternative Names.
* Production incidents can be safely reproduced in a lab.

---

## Operational Lessons

* Every infrastructure change should be verified.
* Packet captures provide valuable troubleshooting evidence.
* Dashboards simplify operational visibility.
* Small controlled failures improve understanding.
* Documentation should be created before releasing software.

---

## Improvements for Sprint 02

* Introduce production DNS.
* Replace hosts file with DNS resolution.
* Capture DNS packets.
* Study recursive resolution.
* Integrate Route 53 and Azure DNS concepts.

---

Sprint 01 establishes the production edge and provides the foundation for every subsequent sprint.
