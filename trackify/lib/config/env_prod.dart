import 'env.dart';

class EnvProd extends Env {
  @override
  String get appName => 'Trackify';

  @override
  String get apiBaseUrl => 'https://app.trackify.com';

  @override
  bool get enableLogs => false;
}
