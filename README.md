# Weather App

A minimal weather app that provides current weather statistics with a clean animated icon based on the user's location. The app utilizes Geolocator for location services, Lottie Icons for animated weather icons, and the [OpenWeatherMap API](https://openweathermap.org) for fetching real-time weather data.

## Features

Update-1:
-**Updated UI:** Made the whole UI from looking minimal to a little more eye catching.
- **Animated Icons:** Added more icons for night and day time in different Weather Conditions.
- **Time and Date:** Remade the logic for fetching time so that it can use the API rather than the current time.
- **A little addition:** Added a weather related quote to enhance the user experience which gets changed as per the weather.
- **Fixed the heading:** Synchoronized the Heading title to match the concurrent timing of the location.
- **Refresh Functionality:** Added a pull-to-refresh to sync the API fetch whenever triggered.

Origin:
- **Current Weather:** Get real-time weather conditions based on the user's current location.
- **Animated Icons:** Enjoy clean and visually appealing animated icons representing different weather conditions.

## Getting Started

Follow these steps to set up the weather app on your local machine.

### Prerequisites

- [Geolocator](https://pub.dev/packages/geolocator): A Flutter geolocation plugin.
- [Lottie](https://pub.dev/packages/lottie): A Flutter package for rendering Lottie animations.
- [OpenWeatherMap API Key](https://openweathermap.org/appid): Sign up and obtain an API key.

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/weather-app.git
   ```

2. Navigate to the project directory:

   ```bash
   cd weather-app
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Create a `.env` file in the project root and add your OpenWeatherMap API key:

   ```env
   API_KEY=your_openweathermap_api_key
   ```

5. Run the app:

   ```bash
   flutter run
   ```

## Contributing

Contributions are welcome! Feel free to open issues or pull requests for any improvements or bug fixes.

This project was created with the assistance of the fantastic tutorial on  [YouTube](https://www.youtube.com/watch?v=yLtpMqvMgdY&list=PLlvRDpXh1Se6FF_srf1fcahvQX3qFk86v&index=12) by [Mitch Koko](https://github.com/mitchkoko/) and [Youtube](https://www.youtube.com/watch?v=MMq4wkeHkPc) by [Romain Girou](https://github.com/romain-girou)
Icons are sourced from [LottieFiles](https://lottiefiles.com/vdr0uy2wwsoljqtc) by JoChang.
## License

This project is licensed under the [MIT License](LICENSE).

