class Weather {
  final String cityName;
  final double temperature;
  final String mainCondition;
  final int id;
  final double temperaturemax;
  final double temperaturemin;
  final DateTime time;
  final DateTime sunrise;
  final DateTime sunset;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
    required this.id,
    required this.temperaturemax,
    required this.temperaturemin,
    required this.time,
    required this.sunrise,
    required this.sunset,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json['weather'][0]['id'],
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      temperaturemax: json['main']['temp_max'].toDouble(),
      temperaturemin: json['main']['temp_min'].toDouble(),
      mainCondition: json['weather'][0]['main'],
      time: DateTime.now().add(Duration(
          seconds: json['timezone'] - DateTime.now().timeZoneOffset.inSeconds)),
      sunrise: DateTime.fromMillisecondsSinceEpoch(
          json['sys']['sunrise'] * 1000,
          isUtc: false),
      sunset: DateTime.fromMillisecondsSinceEpoch(json['sys']['sunset'] * 1000,
          isUtc: false),
    );
  }
}
