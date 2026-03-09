import 'package:provider/provider.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:trackify/theme/theme_provider.dart';

import 'app/app.dart';
import 'config/env.dart';
import 'config/env_resolver.dart';

late final Env appEnv;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  appEnv = EnvResolver.resolve();
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: ShadcnApp(home: App()),
    ),
  );
}
