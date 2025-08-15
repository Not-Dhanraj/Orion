# Orion

A modern, responsive, and feature-rich cross-platform client for Radarr and Sonarr media management systems. Built with Flutter to provide a seamless experience across mobile, desktop, and web platforms.

<img src="assets/icon/icon.png" alt="Orion App Icon" width="100" height="100" />

## Features

- **Multi-platform Support**: Run on Android, iOS, Windows, macOS, Linux, and Web
- **Responsive UI**: Adapts beautifully to any screen size from phones to large desktop displays
- **Radarr Integration**: Manage your movie library, monitor downloads, and control the queue
- **Sonarr Integration**: Manage your TV show library, monitor episodes, and control the queue
- **Unified Queue**: View and manage downloads from both Radarr and Sonarr in a single interface
- **Dark & Light Themes**: Choose your preferred visual style


## Screenshots

<table>
  <tr>
    <td><img src="assets/screenshots/screenshot1.png" alt="Dashboard" width="100%"/></td>
    <td><img src="assets/screenshots/screenshot2.png" alt="Movie Details" width="100%"/></td>
    <td><img src="assets/screenshots/screenshot3.png" alt="TV Show Details" width="100%"/></td>
  </tr>
  <tr>
    <td><img src="assets/screenshots/screenshot4.png" alt="Queue" width="100%"/></td>
    <td><img src="assets/screenshots/screenshot5.png" alt="Settings" width="100%"/></td>
    <td><img src="assets/screenshots/screenshot6.png" alt="Calendar" width="100%"/></td>
  </tr>
</table>

## Installation

### Android
- Download the APK from the [Releases](https://github.com/Not-Dhanraj/test_proj/releases) page
- Enable installation from unknown sources in your device settings
- Install the APK

### iOS

- Build from source using Xcode

### Windows
- Download the installer from the Releases page
- Run the installer and follow the on-screen instructions




## Development

### Prerequisites

- Flutter SDK 3.8.0 or higher
- Dart SDK 3.8.1 or higher
- An IDE (VS Code, Android Studio, or IntelliJ IDEA)

### Setup

1. Clone the repository:
   ```
   git clone https://github.com/Not-Dhanraj/test_proj.git
   cd test_proj
   ```

2. Install dependencies:
   ```
   flutter pub get
   ```

3. Run the app:
   ```
   flutter run
   ```

### Building for Production

#### Android
```
flutter build apk --release
```

#### iOS
```
flutter build ios --release
```

#### Windows
```
flutter build windows --release
```

#### macOS
```
flutter build macos --release
```

#### Linux
```
flutter build linux --release
```

#### Web
```
flutter build web --release
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Future Plans

- [ ] Prowlarr integration for managing indexers
- [ ] Lidarr integration for music collection management
- [ ] Enhanced error handling and user feedback
- [ ] Code restructuring for better maintainability
- [ ] Performance optimizations for larger libraries
