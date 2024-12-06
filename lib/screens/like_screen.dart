import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/screens/photo_screen.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beğenilen Resimler"),
      ),
      body: likedPhotos.isEmpty
          ? const Center(
              child: Text(
                "Henüz beğenilen bir resim yok.",
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: likedPhotos.length,
              itemBuilder: (context, index) {
                final item = likedPhotos[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(item['title']!),
                    leading: Image.network(
                      item['image']!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
