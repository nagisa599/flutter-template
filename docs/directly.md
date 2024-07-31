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
- apiやdb,localstorageのロジックを書くフォルダー

### domain/repository/〇〇_reposiroty.dart
- 実装したい抽象クラスを記載。

### domain/repository/〇〇_sharepreference_reposiroty.dart
- localstorageを叩く際に実装
- 必ずdomain/repository/〇〇_reposiroty.dartの抽象クラスを実装すること

### domain/repository/〇〇_mock_reposiroty.dart
- まだapiやlocalstorageが決まっていない時にmockとして叩く方法

### usecase/〇〇/〇〇_uescase.dart
- マイグレーションはこのディレクトリに置く
- マイグレーションのやり方は[テーブル、カラムの追加・変更方法](./add-table.md)を参照すること

### user_interface/〇〇/page


### user_interface/〇〇/router
- [GraphQLスキーマ](../schema.gql)から自動生成されたcodeが置かれている

### common/constant


### widgets
- 


### main.dart




