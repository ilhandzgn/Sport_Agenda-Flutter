import 'package:flutter/material.dart';
import 'core/routes.dart';
import 'core/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Başlangıç teması: Gündüz modu
  ThemeMode _themeMode = ThemeMode.light;

  // Temayı değiştiren fonksiyon
  void toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SPORT AGENDA',
      themeMode: _themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      // Bir düğme ekleyerek temayı değiştirme
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('SPORT AGENDA'),
            actions: [
              IconButton(
                icon: Icon(
                  _themeMode == ThemeMode.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                ),
                onPressed: toggleTheme,
              ),
            ],
          ),
          body: child,
        );
      },
    );
  }
}
