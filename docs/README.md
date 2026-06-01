# Backend Docs

This folder documents the backend as a multi-service system.

## Start Here

- `ARCHITECTURE.md` - service map, network boundaries, ports, and request flow.
- `DEPLOYMENT.md` - production layout under `/opt/backend_sloco` and CD roles.
- `tasks/` - backend-level task plans and migration history.

## TBD Thinking Docs

- `tasks/TBD_CICD_SECRETS_AND_RUNNERS.md` - future rethink of CI/CD, secrets,
  private repos, GitHub Actions minutes, TeamCity, and self-hosted runners.

## Service Docs

- `../gateway_service/README.md` - API Gateway local development and API notes.
- `../gateway_service/AGENTS.md` - Gateway coding conventions.
- `../recommendation_service/README.md` - Recommendation service local
  development and health endpoints.

## Source Of Truth

- The public API boundary is the Gateway.
- The production compose source of truth is `../docker-compose.yml`.
- Nginx remains host-level and proxies public `/v1/*` traffic to the Gateway.
- The recommendation service is private and is reached through the Docker
  network.
