# Reusing workflows

## JIRA

### Add a comment to an issue:

```yaml
  jira:
    uses: tegorov/workflows/.github/workflows/jira-add-comment.yml@main
    with:
      jira_server: 'https://jira.atlassian.net'
      issue_id: 'JIRA-453'
      comment: 'This is comment'
    secrets:
      username: ${{ secrets.JIRA_USERNAME }}
      token: ${{ secrets.JIRA_TOKEN }}
```
