# DevOps CI/CD Site

A simple HTML/CSS/JavaScript website deployed to AWS with a GitHub Actions pipeline.

## Pipeline

Every push to `main` (or a manual run) triggers `.github/workflows/deploy.yml`:

1. **Test** – `tests/test.sh` checks the required files and page content.
2. **Build / Package** – copies the site into `dist/`, adds `build-info.txt` (commit SHA + run number), uploads it as an artifact.
3. **Deploy** – syncs `dist/` to the S3 bucket and invalidates the CloudFront cache.

The site is served from Amazon S3 through Amazon CloudFront.

## Required repository secrets

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `S3_BUCKET`
- `CF_DISTRIBUTION_ID`
