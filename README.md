# css.offtrackbetting.com

Source repository for CSS assets published to the `css.offtrackbetting.com` S3 bucket and served through the `css2.offtrackbetting.com` CloudFront distribution.

## Deployment

1. Add or update assets in this repository.
2. Commit the changes.
3. Run `git push`.
4. The local `.git/hooks/pre-push` wrapper runs `scripts/sync-to-s3.sh` before Git sends refs to GitHub.
5. If the S3 synchronization fails, the script exits nonzero and blocks the push.
6. After a successful push, verify the asset through `https://css2.offtrackbetting.com/css/...`.

The sync uses `--delete`, so the local `css/` tree is authoritative for the `s3://css.offtrackbetting.com/css` prefix.

Published CSS receives `max-age=31536000,s-maxage=31536000`. Put immutable assets in versioned directories so updates do not reuse a one-year-cached URL.

The hook implementation is intentionally small. Deployment logic lives in the tracked `scripts/sync-to-s3.sh` file. Install the tracked wrapper after a fresh clone:

```sh
cp hooks/pre-push .git/hooks/pre-push
chmod +x .git/hooks/pre-push scripts/sync-to-s3.sh
```

## Future Improvement

Replace the workstation-local hook with a GitHub Actions workflow that runs after GitHub accepts the push. This will make GitHub the source of truth and avoid publishing assets before the remote push is confirmed.
