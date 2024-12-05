import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';

List<Map<String, String>> likedPhotos = [];

class PhotoScreen extends StatelessWidget {
  PhotoScreen({super.key});

  final List<Map<String, String>> trainingData = [
    {
      'title': 'Real Madrid Antrenmanı',
      'image':
          'https://cdnuploads.aa.com.tr/uploads/Contents/2013/04/08/thumbs_b_c_fb5a146b9d67969f3916e47a9dbd38fd.jpg',
    },
    {
      'title': 'Galatasaray Antrenmanı',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuqpyMKktjhBJLvKhMEBEwQ9QOyyBj17IE1A&s',
    },
    {
      'title': 'Barcelona Antrenmanı',
      'image': 'https://pbs.twimg.com/media/Cc5bj3pUkAEaQDx.jpg',
    },
    {
      'title': 'Bayern Münih Antrenmanı',
      'image':
          'https://static.gazetaesportiva.com/uploads/2024/08/GVa13yhWEAAtwHE.jpg',
    },
    {
      'title': 'Manchester City Antrenmanı',
      'image':
          'https://iaftm.tmgrup.com.tr/ad9188/385/218/0/163/1596/1068?u=https://iftm.tmgrup.com.tr/2023/06/09/manchester-city-sampiyonlar-ligi-finaline-hazir-1686337372115.jpeg',
    },
    {
      'title': 'Liverpool Antrenmanı',
      'image':
          'https://i.odatv.com/2/1280/720/storage/old/images/2022_01/2022_01_05/odatv_image_66__69c87c80a7f945.jpg',
    },
    {
      'title': 'Atletico Madrid Antrenmanı',
      'image':
          'https://www.shutterstock.com/editorial/image-editorial/M3T5A8wfM1z4gcx8MDAzNzE=/atletico-madrid-players-attend-their-teams-training-440nw-9962253c.jpg',
    },
    {
      'title': 'Borussia Dortmund Antrenmanı',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI63GkNV6LG57hNhCBXEoaFeAa-_LbUXQSYw&s',
    },
    {
      'title': 'İnter Antrenmanı',
      'image':
          'https://i.gazeteduvar.com.tr/storage/files/images/2023/06/09/inter-2-TJ4a.jpg',
    },
    {
      'title': 'Milan Antrenmanı',
      'image': 'https://pbs.twimg.com/media/EkyJoNPX0AMAnWo.jpg',
    },
    {
      'title': 'Arsenal Antrenmanı',
      'image':
          'https://assets.goal.com/images/v3/blt26fbcb54c26442ea/797812724c47fa51e466a3fd301ab0c5c2abec35.jpg?auto=webp&format=pjpg&width=3840&quality=60',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Antrenman Fotoğrafları"),
        backgroundColor: turkuaz,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              context.go('/like');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: trainingData.length,
        itemBuilder: (context, index) {
          final item = trainingData[index];
          final isLiked = likedPhotos.contains(item);

          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(item['title']!),
              leading: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      content: Image.network(
                        item['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                child: Image.network(
                  item['image']!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : null,
                ),
                onPressed: () {
                  if (isLiked) {
                    likedPhotos.remove(item);
                  } else {
                    likedPhotos.add(item);
                  }

                  (context as Element).markNeedsBuild();
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
