import 'package:flavour_flutter/appconfig.dart';
import 'package:flavour_flutter/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  AppConfig.create(
      apiKey: '12345',
      appName: 'Flavor Prod',
      baseUrl: 'This is production app',
      flavor: Flavor.prod);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}


// flutter run -t lib/main_dev.dart --flavor dev
// flutter run -t lib/main.dart --flavor prod

// flutter run --release -t lib/main.dart --flavor prod

// flutter build apk -t lib/main.dart --flavor prod

// flutter build apk -t lib/main.dart --flavor prod --split-per-abi
