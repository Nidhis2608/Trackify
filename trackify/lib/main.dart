import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      child: App(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trackify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Center(child: Text('Trackify')),
    );
  }
}
