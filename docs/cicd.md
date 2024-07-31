# CI/CDの設定
github actionsを利用している。現在はiosのみに対応しているが、androidにも対応する。
## check.yml
- pull requestのタイミングで flutter analyzeとする
- [Problem Matchers](https://github.com/actions/toolkit/blob/main/docs/problem-matchers.md)、[Danger action](https://github.com/marketplace/actions/danger-action) を使って、analyze が出力する (info|warning|error) を GitHub の File chaged に表示します


## bump.yml　<span style="color:red;">（個人開発用)</span>

- GitHub の画面上からアプリのバージョン（pubspec.yaml の version:）をインクリメント（更新）するワークフローです

  
## bump pull request.yml (チーム開発用)
- アプリバージョンの更新を含む release ブランチと Pull Request を作成する
- releases/1.0.0+1 のようなブランチを作成する
チーム開発や Protected branch を使っている環境を想定したワークフロー

## tagging-when-merged.yml
