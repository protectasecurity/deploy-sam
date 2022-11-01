# Deploy SAM GitHub Actions

Deploy SAM GitHub Actions allows you to deploy AWS SAM projects

## Example usage

```yaml
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    environment: develop
    steps:
      - uses: actions/download-artifact@v3
        with:
          name: dist
          path: dist
      - uses: protectasecurity/deploy-sam@v1
        with:
          params: '--config-env dev --no-fail-on-empty-changeset'
          workspace: 'dist'
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_DEFAULT_REGION: 'us-east-1'
```

## Inputs

- `params` **Optional** AWS SAM deploy params
- `workspace` **Optional** Relative path under $GITHUB_WORKSPACE to place the project

## Outputs

- `status` Returned status code.

## Environment

- `AWS_ACCESS_KEY_ID` **Required**
- `AWS_SECRET_ACCESS_KEY` **Required**
- `AWS_DEFAULT_REGION` **Required**

## Authors

- [Ronnie Ayala](https://github.com/ronnieacs)