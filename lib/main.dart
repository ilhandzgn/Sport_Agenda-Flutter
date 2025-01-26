import 'package:flutter/material.dart';
import 'core/routes.dart';
// ignore: unused_import
import 'core/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter widget'larını başlat
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SPORT AGENDA',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: router, // go_router yapılandırmamızı kullan
      debugShowCheckedModeBanner: false, // Debug bandını kaldır
    );
  }
}
