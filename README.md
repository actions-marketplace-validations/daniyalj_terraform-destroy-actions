# Terraform destroy with remote state

This action destroys with terraform using remote state.

## Inputs

### `org_name`

**Required** GitHub organization name 

### `repo_name`

**Required** GitHub repository name 


## Example usage

```
jobs:
  issue_parser:
    runs-on: ubuntu-latest
    name: Terraform destroy
    steps:
    - name: Terraform destroy
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOOGLE_CREDENTIALS: ${{ secrets.GOOGLE_CREDENTIALS }}
      uses: daniyalj/terraform-destroy-actions@v3
      with:
        org_name: 'daniyalj'
        repo_name: 'actions-assistant-demo'
```
