# Orion

A modern, responsive, and feature-rich cross-platform client for Jellyfin, Radarr, and Sonarr media management and playback systems. Built with Flutter to provide a seamless experience across mobile, desktop, and web platforms.

<img src="assets/icon/icon.png" alt="Orion App Icon" width="100" height="100" />

## Features

- **Jellyfin Integration**: Stream and play media directly from your Jellyfin server with a built-in player.
- **Radarr & Sonarr Integration**:
  - **Movie Management**: Browse, search, and manage your Radarr movie library.
  - **TV Show Management**: Browse, search, and manage your Sonarr TV series library.
  - **Download Queue**: View and manage all downloads in a unified interface with status indicators and progress tracking.
- **Multi-platform Support**: Run on Android, Windows, Linux, and Web.
- **Responsive Design**: Adapts to any screen size with responsive layouts using adaptive navigation.
- **Dynamic Theming**: Light and dark theme support adapting to your system preferences.

## Screenshots

<details>
<summary>Click to view Screenshots</summary>

| | | |
|:---:|:---:|:---:|
| <img src="screenshots/Screenshot_20260425-004914_Orion.png" width="300" /> | <img src="screenshots/Screenshot_20260425-005027_Orion.png" width="300" /> | <img src="screenshots/Screenshot_20260428-115336_Orion.png" width="300" /> |
| <img src="screenshots/Screenshot_20260428-115419_Orion.png" width="300" /> | <img src="screenshots/Screenshot_20260428-115501_Orion.png" width="300" /> | <img src="screenshots/Screenshot_20260428-115510_Orion.png" width="300" /> |
| <img src="screenshots/Screenshot_20260428-115517_Orion.png" width="300" /> | <img src="screenshots/Screenshot_20260428-115550_Orion.png" width="300" /> | <img src="screenshots/Screenshot_20260428-115726_Orion.png" width="300" /> |

<img src="screenshots/Screenshot_20260428-115832_Orion.png" width="800" />

</details>

## Roadmap

- [ ] Prowlarr integration for managing indexers
- [ ] Lidarr integration for music collection management
- [x] Enhanced error handling and user feedback
- [x] Code restructuring for better maintainability
- [ ] Write proper unit tests
- [x] Go Router for routing

## Installation

### Android
- Download the APK from the [Releases](https://github.com/Not-Dhanraj/Orion/releases) page
- Enable installation from unknown sources in your device settings
- Install the APK

### iOS
- Build from source using Xcode

## Development

### Prerequisites
- Flutter SDK 3.8.0 or higher
- Dart SDK 3.8.1 or higher
- An IDE (VS Code, Android Studio, or IntelliJ IDEA)

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/Not-Dhanraj/orion.git
   cd orion
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## FAQ

<details>
<summary><strong>What is the purpose of this app?</strong></summary>
I created this app just for fun and wanted to try something new with open API. It shows a unified interface for multiple media management APIs using Flutter.
</details>

<details>
<summary><strong>Why did I reinvent the wheel?</strong></summary>
Because I wanted the wheel to be red, I guess. At the time when I started working on it, there was no open source app fot this on android (there was one but it was discontinued, so I created one myself).
</details>

<details>
<summary><strong>Did I vibecode this app?</strong></summary>
Depends on how you explain vibecoding, but I did use AI for some tasks here and there. One thing I'd like to clarify is that I can't design the UI, so I used Stitch to generate it. I liked it and replaced the old UI with it. You can check old commits to see the old UI.
</details>
