# deeplink24

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


whats included.
>opens app with the link click (here testapp-b9cbb.web.app)
>navigates to specific page (/PageTwo) path name as configured in go router
>handles links with query parameters (/PageTwo/?item=abc)
> works in handles in ios and android (app need to be registered in app store ie. need app id)


1: configure manifest
<meta-data android:name="flutter_deeplinking_enabled" android:value="true" />
<intent-filter android:autoVerify="true">
<action android:name="android.intent.action.VIEW" />
<category android:name="android.intent.category.DEFAULT" />
<category android:name="android.intent.category.BROWSABLE" />
<data android:scheme="http" android:host="testapp-b9cbb.web.app" />
<data android:scheme="https" />
</intent-filter>

2:configure routes with go_router (handle uri.queryParams value (gets as map)) 

3:add app to firebase and add fingerprint 

till this app will open as optional on link click

4: add asset in web root 
            host a website in firebase , by default .well-known files for ios and android will be created by firebase.
 
now will open the app directly on link click 


IOS 

for ios add associated domains in capabilities 
 
register app and add the app to firebase and update team and app id in settings 

by this ios app will also open on link click
