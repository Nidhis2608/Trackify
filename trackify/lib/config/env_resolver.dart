import 'env.dart';
import 'env_prod.dart';
import 'env_stage.dart';

class EnvResolver {
  static Env resolve() {
    const env = String.fromEnvironment('ENV');

    switch (env) {
      case 'prod':
        return EnvProd();
      case 'stage':
      default:
        return EnvStage();
    }
  }
}
