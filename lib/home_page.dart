import 'package:flavour_flutter/appconfig.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appconfig = AppConfig.shared;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              appconfig.appName,
            ),
            Text(
              appconfig.baseUrl,
            ),
            Text(
              appconfig.apiKey,
            ),
          ],
        ),
      ),
    );
  }
}
