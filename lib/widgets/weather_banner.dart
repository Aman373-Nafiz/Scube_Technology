import 'package:flutter/material.dart';
import '../core/utils/image_assets.dart';

class WeatherBanner extends StatelessWidget {
  final EdgeInsets margin;
  final double height;
  final VoidCallback? onTap;

  const WeatherBanner({
    Key? key,
    this.margin = const EdgeInsets.symmetric(horizontal: 12),
    this.height = 90,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: margin,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            _getWeatherAsset(),
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.blue.shade100,
                child: const Center(
                  child: Icon(
                    Icons.wb_sunny,
                    size: 40,
                    color: Colors.orange,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  String _getWeatherAsset() {
    final now = DateTime.now();
    final double currentTime = now.hour + (now.minute / 60.0);

    // Range 1: 11:00 AM - 12:00 PM (Blue/Cloudy)
    if (currentTime >= 11.0 && currentTime < 12.0) {
      return ImageAssets.weatherCloudy;
    }
    // Range 2: 12:00 PM - 01:00 PM (Red/Sunny)
    else if (currentTime >= 12.0 && currentTime < 13.0) {
      return ImageAssets.weatherSunny;
    }
    // Range 3: 02:30 PM - 03:30 PM (Moon/Dark)
    else if (currentTime >= 14.5 && currentTime < 15.5) {
      return ImageAssets.weatherMoon;
    }

    // Default Fallback
    return ImageAssets.weatherCloudy;
  }
}