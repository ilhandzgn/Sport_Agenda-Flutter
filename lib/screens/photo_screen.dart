import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Antrenman Fotoğrafları"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
