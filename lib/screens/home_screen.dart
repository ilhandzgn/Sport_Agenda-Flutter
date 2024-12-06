import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/constants.dart';
// ignore: unused_import
import 'package:flutter_app/core/routes.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanrenklerim,
      // AppBar
      appBar: AppBar(
        backgroundColor: drawerrenklerim,
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.app),
            onPressed: () {},
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        backgroundColor: drawerrenklerim,
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              iconColor: draweryazirenklerim,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.photo_camera_solid),
              title: const Text('Antrenman Resimleri'),
              iconColor: draweryazirenklerim,
              onTap: () {
                context.go("/photo");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.hand_thumbsup_fill),
              title: const Text('Beğenilen Resimler'),
              iconColor: draweryazirenklerim,
              onTap: () {
                context.go("/like");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.news_solid),
              title: const Text('Haberler'),
              iconColor: draweryazirenklerim,
              onTap: () {
                context.go("/news");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.sportscourt_fill),
              title: const Text('Spor Dalı'),
              iconColor: draweryazirenklerim,
              onTap: () {
                context.go("/sport");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profilim'),
              iconColor: draweryazirenklerim,
              onTap: () {
                context.go("/profile");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              iconColor: draweryazirenklerim,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const Text('Ana Sayfa İçeriği'),
            ),
          ),
        ],
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomMenu(),
    );
  }
}
