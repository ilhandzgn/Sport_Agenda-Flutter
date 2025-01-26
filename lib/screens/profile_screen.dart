import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String firstName = "İlhan";
    String lastName = "Düzgün";
    // ignore: unused_local_variable
    List<String> likedImages = [];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Profilim'),
        backgroundColor: drawerrenklerim,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kişisel Bilgiler:',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Ad: $firstName',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Soyad: $lastName',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20),
            const Text(
              'Beğenilen Görseller:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.go('/like');
              },
              child: const Text('Beğenilen Resimlere Git'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
