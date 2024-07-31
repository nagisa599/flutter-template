# CI/CDの設定
github actionsを利用している。現在はiosのみに対応しているが、androidにも対応する。
## check.yml
- pull requestのタイミングで flutter analyzeとする
- [Problem Matchers](https://github.com/actions/toolkit/blob/main/docs/problem-matchers.md)、[Danger action](https://github.com/marketplace/actions/danger-action) を使って、analyze が出力する (info|warning|error) を GitHub の File chaged に表示します
## bump.yml

## bump pull request.yml

## tagging-when-merged.yml
