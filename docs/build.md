# ios の場合

## build (githubAction を使わない場合)

> [!CAUTION]
> build する際は、apple developer に登録されていること

1. version を設定する
   pubspec.yaml の version を変更する

```
# Read more about iOS versioning at
# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
# In Windows, build-name is used as the major, minor, and patch parts
# of the product and file versions while build-number is used as the build suffix.
version: 1.0.0+1

environment:
  sdk: ">=3.4.3 <4.0.0"

# Dependencies specify other packages that your package needs in order to work.
# To automatically upgrade your package dependencies to the latest versions
```

1. xcode で project を開く
   1. ビルド端末が表示されている部分を「Any iOS Device (arm64)」
   2. 「Product」 > 「Archive」を実施
   3. 「Distribute App」を押す
2. web で App Store Connect を開く
