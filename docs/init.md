# ios の場合

## bundle Id の変更

1. 「 /ios/Runner.xcodeproj/project.pbxproj」の PRODUCT_BUNDLE_IDENTIFIER」箇所を全て変更する。
   > [!CAUTION]
   > Advises about risks or negative outcomes of certain actions.

```
- PRODUCT_BUNDLE_IDENTIFIER = com.example.sampleApp;
+ PRODUCT_BUNDLE_IDENTIFIER = com.tmp.newSampleApp;
```

2. 「/ios/Runner/Info.plist」の「CFBundleDisplayName」箇所を変更。

```
	<key>CFBundleDisplayName</key>
-	<string>Sample App</string>
+	<string>New Sample App</string>
```
