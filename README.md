# TF-Sec Composite Action

This repository contains a composite action for GitHub Actions that checks out the repository and runs `tflint`
over the specified path.

## Usage

To use this composite action, follow these steps:

1. Add the composite action to your workflow file:

```yaml
jobs:
  check-tf-fmt:
    runs-on: ubuntu-latest
    steps:
    - name: Staticly Analyze Terraform using tfsec
      uses: estenrye/tf-sec-composite-action@v1.0.0
      with:
        working_directory: './tf-tests/validly-formatted'
        github_token: ${{ secrets.GITHUB_TOKEN }}
```

## Inputs

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| `working_directory` | The directory to run `terraform fmt` in. | No | `.` |
| `github_token` | The GitHub token to use for the `tflint` action. | Yes | N/A |

## Build Integration Pipeline Componenets Used

Actions used in this repository:
- [actions/checkout](https://github.com/marketplace/actions/checkout)
- [elgohr/Github-Release-Action](https://github.com/elgohr/Github-Release-Action)
- [aquasecurity/tfsec-action]https://github.com/marketplace/actions/tfsec-action)
- [phish108/autotag-action](https://github.com/marketplace/actions/autotag)
- [nick-fields/assert-action](https://github.com/marketplace/actions/assert-action)
- [Ilshidur/action-discord](https://github.com/marketplace/actions/actions-for-discord)