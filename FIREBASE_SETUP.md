# Firebase Setup Guide for Flutter App

## Prerequisites
- Flutter SDK installed
- Firebase project created at [Firebase Console](https://console.firebase.google.com/)

## Step 1: Create Firebase Project
1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Create a project" or select an existing project
3. Follow the setup wizard

## Step 2: Enable Authentication
1. In your Firebase project, go to "Authentication" in the left sidebar
2. Click "Get started"
3. Go to "Sign-in method" tab
4. Enable "Email/Password" provider
5. Click "Save"

## Step 3: Add Android App (if building for Android)
1. In Firebase project, click the gear icon → "Project settings"
2. Scroll down to "Your apps" section
3. Click "Add app" → "Android"
4. Enter your package name: `com.example.flutter_app01`
5. Download `google-services.json`
6. Place it in `android/app/` directory

## Step 4: Add iOS App (if building for iOS)
1. In Firebase project, click "Add app" → "iOS"
2. Enter your bundle ID: `com.example.flutterApp01`
3. Download `GoogleService-Info.plist`
4. Place it in `ios/Runner/` directory

## Step 5: Update Android Configuration
Add to `android/app/build.gradle.kts`:
```kotlin
plugins {
    id("com.android.application")
    id("kotlin-android")
    id("com.google.gms.google-services") // Add this line
}
```

Add to `android/build.gradle.kts`:
```kotlin
buildscript {
    dependencies {
        classpath("com.google.gms:google-services:4.4.0")
    }
}
```

## Step 6: Update iOS Configuration (if needed)
Add to `ios/Runner/Info.plist`:
```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLName</key>
        <string>REVERSED_CLIENT_ID</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>YOUR_REVERSED_CLIENT_ID</string>
        </array>
    </dict>
</array>
```

## Step 7: Test the App
1. Run `flutter clean`
2. Run `flutter pub get`
3. Run your app: `flutter run`

## Features Included
- ✅ Email/Password Authentication
- ✅ User Registration
- ✅ User Login
- ✅ Form Validation
- ✅ Error Handling
- ✅ Loading States
- ✅ Logout Functionality
- ✅ Protected Routes
- ✅ Beautiful UI with your background image

## Troubleshooting
- If you get Firebase initialization errors, make sure you've added the configuration files
- For Android: Check that `google-services.json` is in `android/app/`
- For iOS: Check that `GoogleService-Info.plist` is in `ios/Runner/`
- Make sure you've enabled Email/Password authentication in Firebase Console

## Next Steps
- Add password reset functionality
- Implement email verification
- Add social login (Google, Facebook, etc.)
- Store additional user data in Firestore
- Add user profile management
