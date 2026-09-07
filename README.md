<p align="center">
  <img src="app/assets/images/founder-finance-logo.png" alt="Founder Finance" width="180">
</p>

# Founder Finance

Founder Finance is a self-hosted personal finance application for tracking accounts, transactions, budgets, investments, and net worth from one dashboard.

## Features

- Account and balance tracking
- Transaction importing and categorization
- Budgets, recurring transactions, and financial goals
- Investment and cryptocurrency tracking
- Browser, desktop, mobile, and API clients
- Optional AI-powered financial insights

## Run Locally

### Requirements

- Ruby version from `.ruby-version`
- PostgreSQL
- Redis

```sh
cp .env.local.example .env.local
bin/setup
bin/dev
```

Open [http://localhost:3000](http://localhost:3000).

To load the included sample dataset:

```sh
bin/rails demo_data:default
```

## Production Deployment

The repository includes a production `Dockerfile`. A deployment needs:

- A PostgreSQL database exposed through `DATABASE_URL`
- A Redis instance exposed through `REDIS_URL`
- `SECRET_KEY_BASE` set to a securely generated value
- `SELF_HOSTED=true`
- `RAILS_FORCE_SSL=true` and `RAILS_ASSUME_SSL=true` behind an HTTPS proxy

The container runs database preparation automatically before starting Rails. Its health endpoint is `/up`.

For a Docker Compose installation, see [the hosting guide](docs/hosting/docker.md).

## Development

Run the automated checks with:

```sh
bin/rails test
bin/rails test:system
```

Issues and feature requests can be submitted in the [GitHub repository](https://github.com/SujaltheBIGG/finance-tracker/issues).

## Attribution

Founder Finance is based on the open-source Maybe Finance codebase and is not affiliated with or endorsed by Maybe Finance, Inc.

## License

Founder Finance is distributed under the [GNU Affero General Public License v3.0](LICENSE).
