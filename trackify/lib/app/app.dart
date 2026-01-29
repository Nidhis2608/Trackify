import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/app_theme.dart';
import '../theme/theme_provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (_, theme, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: theme.themeMode,
          home: Home(),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ThemeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Trackify'),
        actions: [
          IconButton(
            onPressed: theme.toggleTheme,
            icon: Icon(theme.isDark ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      body: Center(child: Text('Theme Toggle')),
    );
  }
}
