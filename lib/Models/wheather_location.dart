import 'package:flutter/material.dart';

class WheatherLocation {
  final String city;
  final String dateTime;
  final String temprature;
  final String wheatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humiity;

  WheatherLocation({
    required this.city,
    required this.dateTime,
    required this.temprature,
    required this.wheatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humiity,
  });
}

final LocationList = [
  WheatherLocation(
    city: "Kolkata",
    dateTime: " 7:50 PM - Monday, 26 Sep 202",
    temprature: "24\u2103",
    wheatherType: "Night",
    iconUrl: "Assets/Images/night.svg",
    wind: 10,
    rain: 2,
    humiity: 10,
  ),
  WheatherLocation(
    city: "Mumbai",
    dateTime: " 5:30 AM - Monday, 26 Sep 2024",
    temprature: "17\u2103",
    wheatherType: "Sunny",
    iconUrl: "Assets/Images/sun-2.svg",
    wind: 4,
    rain: 12,
    humiity: 61,
  ),
  WheatherLocation(
    city: "Hydrabad",
    dateTime: " 1:50 AM - Monday, 26 Sep 202",
    temprature: "10\u2103",
    wheatherType: "Rainy",
    iconUrl: "Assets/Images/weather.svg",
    wind: 10,
    rain: 2,
    humiity: 10,
  ),
];
