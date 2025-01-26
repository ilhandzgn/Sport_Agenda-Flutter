import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text("Sayfalar Arasi Gecis"),
          ElevatedButton(
            onPressed: () {
              context.go("/login");
            },
            child: const Text("Giris Yapiniz | go"),
          ),
          const Divider(),
          ElevatedButton(
            onPressed: () {
              context.push("/login");
            },
            child: const Text("Giris Yapiniz | push"),
          )
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
