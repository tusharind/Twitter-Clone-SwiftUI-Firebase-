# SwiftUI Twitter Clone

A fully functional, polished Twitter clone built using **SwiftUI** and **Firebase**. This project demonstrates professional iOS development practices, featuring a modular architecture, clean code structure, and robust backend integration.

## 📱 Features

### Authentication
- **Sign Up & Login**: Secure email and password authentication via Firebase Auth.
- **Session Management**: Persistent login state handling.

### Feed & Interaction
- **Timeline**: Real-time fetching and displaying of tweets.
- **Posting**: Create and upload new tweets with text.
- **Dynamic Content**: Auto-sizing cells and smooth scrolling performance.

### User Profile
- **Profile View**: Display user details (bio, follower counts, etc.).
- **Edit Profile**: Update profile information.
- **User Tweets**: Filtered timeline showing only the specific user's tweets.
- **Follow System**: (If implemented) Logic for following/unfollowing users.

### Explore & Search
- **User Search**: Search for other users by username or display name.
- **Navigation**: Seamless navigation to user profiles from search results.

## 🛠 Tech Stack

- **Language**: Swift 5+
- **UI Framework**: SwiftUI
- **Architecture**: MVVM (Model-View-ViewModel)
- **Backend Service**: Firebase
  - **Authentication**: User management
  - **Firestore**: NoSQL database for tweets and user data
  - **Storage**: Media storage for profile images
- **Async Image Loading**: Kingfisher (or native AsyncImage, depending on implementation)

## 📂 Project Structure

The project follows a feature-centric folder structure for better scalability:

```text
Twitter/
├── App/                # App entry point (TwitterApp.swift)
├── Core/               # Main feature modules
│   ├── Authentication/ # Login/Signup views & logic
│   ├── Feed/           # Main timeline
│   ├── Explore/        # Search functionality
│   ├── Profile/        # User profile & edit views
│   ├── CreatePost/     # Tweet composition
│   ├── Components/     # Reusable UI components (Buttons, TextFields)
│   ├── Root/           # Root view (Session switching)
│   └── TabBar/         # Main tab navigation
├── Services/           # Networking & Data services
│   ├── UserService.swift
│   ├── TweetService.swift
│   └── ImageUploader.swift
├── Model/              # Data models (User, Tweet)
├── Utils/              # Helpers & Constants
└── Extensions/         # Swift extensions
```

## 🚀 Getting Started

### Prerequisites
- Xcode 14.0+
- iOS 16.0+
- An active Firebase Project

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/Twitter-Clone.git
   cd Twitter-Clone
   ```

2. **Configure Firebase**
   - Create a project in the [Firebase Console](https://console.firebase.google.com/).
   - Add an iOS app to your Firebase project.
   - Download the `GoogleService-Info.plist` file.
   - Drag and drop `GoogleService-Info.plist` into the root of the Xcode project (ensure "Copy items if needed" is checked).

3. **Install Dependencies**
   - If using CocoaPods:
     ```bash
     pod install
     ```
   - If using Swift Package Manager, Xcode should automatically resolve dependencies.

4. **Run the App**
   - Open `Twitter.xcodeproj` (or `.xcworkspace` if using Pods).
   - Select a simulator or physical device.
   - Hit **Run (Cmd + R)**.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
