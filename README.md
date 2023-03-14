<p align="center">
  <img src="https://drive.google.com/uc?export=view&id=1vWBX4YxRPy7wppH5FrU2vxIRww67w6L-" alt="Beetlehr-logo" width="240" />

  <p align="center">The open source HR system</p>
</p>

___

<img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_184905.gif" width="243" height="526"> <img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_185453.gif" width="243" height="526"> <img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_192019.gif" width="243" height="526"> <img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_192814.gif" width="243" height="526">

<img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_193029.gif" width="243" height="526"> <img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_193554.gif" width="243" height="526"> <img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_195317.gif" width="243" height="526"> <img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_195627.gif" width="243" height="526"> 

<img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_195856.gif" width="243" height="526"> <img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_200035.gif" width="243" height="526"> <img src="https://github.com/beetlehr/beetlehr-mobile/blob/main/demo/20230124_200204.gif" width="243" height="526">


## Features

- Attendance System
- Employee Management
- Resign Management
- Leave Management
- Notice board 
- Multi Approval System
- Payroll 

## Table Of Content

1. [Getting Started](#getting-started)
2. [Mobile App Demo](#mobile-app-demo)
3. [Flavor Type](#flavor-type)
4. [Building App](#building-app)
5. [Structure Module](#structure-modules)
6. [Detail Structure Item Feature Module](#detail-structure-item-feature-module)

## Getting Started

1. Clone this repo
2. Getting packages with running `flutter pub get`
3. Register app to your firebase account (https://firebase.flutter.dev/docs/manual-installation/android)
4. [Run/Debug with Flavor](#flavor-type)

## Mobile App Demo
Android: https://play.google.com/store/apps/details?id=io.qerja.mobile   
iOS: https://apps.apple.com/id/app/qerja-io/id1614218184   

## Flavor Type

### Dev

Run in dev mode:
```bash
flutter run -t lib/main_dev.dart --flavor dev
```

```bash
 git fetch --prune
```

### STAGING

Run in staging mode:

```bash
flutter run -t lib/main_staging.dart --flavor staging
```

### PROD
This flavor only for Production. Don't test in this flavor.

Run in prod mode:

```bash
flutter run -t lib/main_prod.dart --flavor prod
```

## Building App

### Requirement

1. Dart SDK Versions : >=2.12.0 <3.0.0 (recommand 2.16.2)
2. Flutter versions : >2.0.0 (recommand 2.10.15)

### Android

#### For build APK

```bash
flutter build apk -t lib/main_prod.dart --flavor prod
```
#### For build AppBundle

```bash
flutter build appbundle -t lib/main_prod.dart --flavor prod
```

### IOS

```bash
flutter build ipa -t lib/main_prod.dart --flavor prod
```


## Structure Modules


### Shared Module Module

Module | Description |
------|------|
[`core`](/core) | Basic common |
[`dependencies`](/shared/dependencies) | Global Dependencies |
[`l10n`](/shared/l10n) | Translation & Localization |
[`component`](/shared/component) | Component App |
[`preferences`](/shared/preferences) | All Prefences style app (Theme, Color, Dimens, Fonts, etc) |
[`routes`](/shared/routes) | Routing screen module |


### Feature Module

Module | Description |
------|------|
[`auth`](/features/auth) | Authentication Module (Login, Register, Logout, Reset) |
[`home`](/features/home) | Home Features |
[`profile`](/features/profile) | Profile Page, Edit Profile, View Profile, etc.. |
[`apps`](/features/apps) | List mini apps features |
[`notice`](/features/notice) | Notification, alert, etc.. |
[`settings`](/features/settings) | Setting preferences: theme, language, ... |
[`attendance`](/features/attendance) | Attendance module clock in, clock out, ...  |
[`payroll`](/features/payroll) | Payroll list, salary slip, ...  |


## Detail Structure Item Module Feature


## Generate Icon Launcher

All launcher icon configurations are in the `flutter_launcher_icons-*.yaml` file, and to generate use the following command:

```sh
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons*
```

> **Note**: Only for IOS
