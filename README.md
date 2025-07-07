# 📰 News App

A modern news application built with Flutter that displays the latest news from multiple categories and sources.

## 💡 App Idea

The app organizes news by categories (General, Sports, Health, Technology, Science, Entertainment, Business). Users can browse news by category, with multi-language support and a modern, responsive UI.

## ✨ Features
- Fetch news from the internet using [NewsAPI](https://newsapi.org/)
- Multiple news categories
- Display news image, title, and description
- Loading indicator and error handling
- Responsive and attractive design with custom fonts (Poppins)
- Localization (multi-language support)
- Uses `dio` for HTTP requests
- Uses `cached_network_image` for efficient image loading

## 🛠️ Technologies & Tools
- **Flutter SDK**: ^3.7.2
- **Dart**: Main programming language
- **dio**: For HTTP requests
- **cached_network_image**: For image caching
- **flutter_localizations**: For localization
- **NewsAPI**: News data source

## 📁 Project Structure
- `lib/models/`: Data models (e.g., ArticleModel)
- `lib/services/`: Services (fetching news)
- `lib/views/`: Main screens
- `lib/widgets/`: Reusable widgets
- `assets/images/`: Category and error images
- `assets/fonts/`: Custom fonts

## ⚙️ Android NDK Settings
- Tested with NDK version **25.2.9519653**
- You can change the NDK version via `local.properties` or Android Studio project settings

## 🚀 Getting Started
1. Make sure you have Flutter and the correct NDK version (25.2.9519653) installed
2. Run:
   ```bash
   flutter pub get
   flutter run
   ```

## 📝 Notes
- You must add your own NewsAPI key in `lib/services/news_service.dart`
- The app uses dark mode by default
- All images are stored in `assets/images/`

## 📄 License
This project is for educational purposes. You can modify or reuse it with attribution.
