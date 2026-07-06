# Examples

This directory contains reusable examples that are independent of any specific sprint.

The goal is to avoid duplicating configuration files across multiple chapters.

## Planned Structure

```
examples/

docker/
dns/
haproxy/
tls/
kubernetes/
helm/
terraform/
ansible/
```

Each example should demonstrate one concept in isolation and may be referenced by multiple sprint documents.

## Guidelines

- Keep examples minimal.
- Ensure they are executable.
- Update examples alongside production implementations.
- Prefer reusable configurations over duplicated content.