import 'env.dart';

class EnvStage extends Env {
  @override
  String get appName => 'Trackify-stage';

  @override
  String get apiBaseUrl => 'https://stage.trackify.com';

  @override
  bool get enableLogs => true;
}
