# Prevention

Future releases should follow these practices.

- Never store generated certificates in Git.
- Always regenerate certificates from scripts.
- Validate PEM generation during bootstrap.
- Verify HAProxy configuration before startup.
- Keep PKI automation reproducible.
- Document certificate rotation procedures.