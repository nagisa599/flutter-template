# ディレクトリー構成
## 以下はlibファルダーの構成
基本的に開発する時は、[lib](../lib)を変更する。
```
.
├── domain
│   ├── auth
│   │   ├── auth.dart
│   │   ├── auth.freezed.dart
│   │   ├── auth.g.dart
│   │   └── repository
│   │       ├── auth_repository.dart
│   │       └── auth_sharepreference.dart
│   └── todo
│       ├── repository
│       │   ├── todo_mock_repository.dart
│       │   ├── todo_repository.dart
│       │   └── todo_sharepreference.dart
│       ├── todo.dart
│       └── todo.freezed.dart
├── main.dart
├── usecase
│   ├── auth
│   │   ├── auth_usecase.dart
│   │   └── auth_usecase.g.dart
│   └── todo
│       ├── todo_usecase.dart
│       └── todo_usecase.g.dart
└── user_interface
    ├── common
    │   └── constants
    │       └── auth0.dart
    ├── pages
    │   ├── auth_page.dart
    │   ├── detail_page.dart
    │   ├── home_page.dart
    │   ├── login_page.dart
    │   ├── sessions.dart
    │   ├── splash_page.dart
    │   └── todo_paga.dart
    ├── router
    │   └── router.dart
    └── widgets
```

# 各ディレクトリーの振る舞い
### lib
- [README](../README.md)にもある通り、開発時は基本的に[lib](../lib/)配下に変更を加える

### docs
- エンジニア向けのドキュメントはここに追加していく
- GitHub上で辿りやすいように[READMEのインデックス](../README.md#インデックス)にリンクを貼ること

### domain/〇〇.dart
- 基本的に〇〇のdomainのmodelを書く。
- [freezard](https://pub.dev/packages/freezed)を使用して、モデルを自動生成する。
- [クラス自動生成ツール](https://app.quicktype.io/)

### domain/repository
- apiやdb,localstorageのなどのデータソースのやり取りを書くフォルダー

### domain/repository/〇〇_reposiroty.dart
- 実装したい抽象クラスを記載。

### domain/repository/〇〇_sharepreference_reposiroty.dart
- localstorageを叩く際に実装
- 必ずdomain/repository/〇〇_reposiroty.dartの抽象クラスを実装する実装クラス

### domain/repository/〇〇_mock_reposiroty.dart
- まだapiやlocalstorageが決まっていない時にmockとして叩く方法

### usecase/〇〇/〇〇_uescase.dart
- usecase層
- 具体的な業務処理やデータの操作ロジックを書く

### user_interface/〇〇/page
- 画面

### user_interface/〇〇/router
- routerによる画面遷移を記述

### common/constant
- 固定urlやテーマ設定、apiのclient設定を記載する場所
> [!CAUTION]
> keyなどを載せているときは、必ずgitignoreにすること



### widgets
- アプリで使用する共通で再利用するUIを管理します。


### main.dart
アプリの一番上位(エントリーポイント)となるファイルです。
以下のようなことを行うことが多いです。

- 画面を縦に固定する
- Firebaseの初期化処理
- envファイルの読み込み
- riverpodのスコープ設定



