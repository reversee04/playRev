import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playrev/pages/indexLayout.dart';
import 'package:playrev/themes/themes.dart';
import 'package:playrev/themes/theme_provider.dart';
void main() {
  runApp(const ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemes = AppThemes();
    final themeMode = ref.watch(appThemeModeProvider);
    return MaterialApp(
      title: 'PLAYREV',
      theme: appThemes.lightTheme,
      darkTheme: appThemes.darkTheme,
      themeMode: themeMode,
      home: const IndexLayout(title: 'PLAYREV'),
    );
  }
}
