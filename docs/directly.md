```
.
├── docs
├── lib
    ├── domain
    │   ├── auth
    │   │   └── repository
    │   └── todo
    │       └── repository
    ├── usecase
    │   ├── auth
    │   └── todo
    └── user_interface
        ├── common
        │   └── constants
        ├── pages
        ├── router
        └── widgets
```

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
