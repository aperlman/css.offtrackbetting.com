#!/bin/sh

set -eu

REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
AWS_CLI=${AWS_CLI:-/usr/local/bin/aws}
BUCKET=${STATIC_ASSET_BUCKET:-css.offtrackbetting.com}
CACHE=31536000

if [ ! -x "$AWS_CLI" ]; then
  echo "ERROR: AWS CLI is not executable: $AWS_CLI" >&2
  exit 1
fi

if [ ! -d "$REPO_ROOT/css" ]; then
  echo "ERROR: CSS directory not found: $REPO_ROOT/css" >&2
  exit 1
fi

cd "$REPO_ROOT"

echo "Syncing css to s3://$BUCKET/css (cache: ${CACHE}s)"
"$AWS_CLI" s3 sync "css" "s3://$BUCKET/css" \
  --quiet \
  --cache-control "max-age=$CACHE,s-maxage=$CACHE" \
  --delete

echo "CSS asset sync completed successfully."