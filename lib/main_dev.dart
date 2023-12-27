import 'package:flavour_flutter/appconfig.dart';
import 'package:flavour_flutter/home_page.dart';
import 'package:flavour_flutter/main.dart';
import 'package:flutter/material.dart';

void main() {
  AppConfig.create(
    apiKey: '0987',
    appName: 'Flavor Dev',
    baseUrl: 'This is development app',
    flavor: Flavor.dev,
  );
  runApp(MyApp());
}

