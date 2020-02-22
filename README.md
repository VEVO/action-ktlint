# action-ktlint

GitHub Action that runs ktlint on your project and then uses [ReviewDog](https://github.com/reviewdog/reviewdog) to leave Pull Request comments.

## Usage 

In your action yaml, add this step:

```
- uses: VEVO/action-ktlint@v1
  with:
    githubToken: ${{ secrets.GITHUB_TOKEN }}
```
