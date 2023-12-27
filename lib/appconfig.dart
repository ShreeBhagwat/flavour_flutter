enum Flavor { dev, prod }

class AppConfig {
  final String appName;
  final String baseUrl;
  final String apiKey;
  final Flavor flavor;

  AppConfig({
    required this.appName,
    required this.baseUrl,
    required this.apiKey,
    required this.flavor,
  });

  factory AppConfig.create({
    String appName = '',
    String baseUrl = '',
    String apiKey = '',
    Flavor flavor = Flavor.dev,
  }) {
    shared = AppConfig(
      appName: appName,
      baseUrl: baseUrl,
      apiKey: apiKey,
      flavor: flavor,
    );

    return shared;
  }

  static AppConfig shared = AppConfig.create();
}
