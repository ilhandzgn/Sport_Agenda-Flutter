import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> newsData = [
    {
      'title': 'Son Dakika: Real Madrid Antrenmanı',
      'image':
          'https://cdnuploads.aa.com.tr/uploads/Contents/2013/04/08/thumbs_b_c_fb5a146b9d67969f3916e47a9dbd38fd.jpg',
      'detail':
          'Real Madrid takımı son antrenmanını tamamladı ve hazırlıklarına devam ediyor...',
    },
    {
      'title': 'Son Dakika: Galatasaray Antrenmanı',
      'image':
          'https://cdn.ntvspor.net/4e5b5ebb3884499fa1554fb69898f54b.jpg?crop=0,0,940,529&w=710&h=403&mode=crop',
      'detail':
          'Galatasaray, Süper Lig için hazırlıklarına hızla devam ediyor...',
    },
    {
      'title': 'Son Dakika: Barcelona Antrenmanı',
      'image': 'https://pbs.twimg.com/media/Cc5bj3pUkAEaQDx.jpg',
      'detail':
          'Barcelona, UEFA Şampiyonlar Ligi için son antrenmanını yaptı...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanrenklerim,
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
      drawer: Drawer(
        backgroundColor: drawerrenklerim,
        child: Column(
          children: [
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
      body: ListView.builder(
        itemCount: newsData.length,
        itemBuilder: (context, index) {
          final item = newsData[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(item['image']!, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item['title']!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ExpansionTile(
                  title: const Text(
                    'Haber Detayı',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item['detail']!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
