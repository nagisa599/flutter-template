# CI/CDの設定
github actionsを利用している。現在はiosのみに対応しているが、androidにも対応する。
## check.yml
- pull requestのタイミングで flutter analyzeとする
- [Problem Matchers](https://github.com/actions/toolkit/blob/main/docs/problem-matchers.md)、[Danger action](https://github.com/marketplace/actions/danger-action) を使って、analyze が出力する (info|warning|error) を GitHub の File chaged に表示します

<img src="https://github.com/user-attachments/assets/99c2d6f3-4101-40b6-b99a-c150abbb1e28" width="300" height="300">


## bump.yml　（個人開発用)

- GitHub の画面上からアプリのバージョン（pubspec.yaml の version:）をインクリメント（更新）するワークフローです

  
## bump pull request.yml (チーム開発用)
- アプリバージョンの更新を含む release ブランチと Pull Request を作成する
- releases/1.0.0+1 のようなブランチを作成する
チーム開発や Protected branch を使っている環境を想定したワークフロー
![スクリーンショット 2024-07-31 12 24 13](https://github.com/user-attachments/assets/0f2966b3-3bfa-4140-a758-04f835609f23)
  <img src="https://github.com/user-attachments/assets/0f2966b3-3bfa-4140-a758-04f835609f23" width="300" height="300">
 
## tagging-when-merged.yml
