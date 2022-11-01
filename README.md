# Deploy SAM GitHub Actions

Deploy SAM GitHub Actions allows you to deploy AWS SAM projects

## Example usage

```yaml
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: protectasecurity/deploy-sam@v1
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_DEFAULT_REGION: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

## Inputs

- `params` **Optional** AWS SAM deploy params
- `artifact` **Optional** Artifact name to deploy
- `workspace` **Optional** Relative path under $GITHUB_WORKSPACE to place the project

## Environment

- `AWS_ACCESS_KEY_ID` **Required**
- `AWS_SECRET_ACCESS_KEY` **Required**
- `AWS_DEFAULT_REGION` **Required**

## Authors

- [Ronnie Ayala](https://github.com/ronnieacs)