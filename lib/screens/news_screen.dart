import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});

  final List<Map<String, String>> newsData = [
    {
      'title': 'Real Madrid Antrenmanı Başladı!',
      'image':
          'https://cdnuploads.aa.com.tr/uploads/Contents/2013/04/08/thumbs_b_c_fb5a146b9d67969f3916e47a9dbd38fd.jpg',
      'description':
          'Real Madrid futbol takımı, antrenmanlarına hızla devam ediyor. Antrenman sırasında oyuncular taktiksel çalışmalara odaklanarak sezona hazırlık yapıyor. Antrenman sahasında futbolcuların disiplinli çalışmaları dikkat çekiyor...',
    },
    {
      'title': 'Galatasaray Antrenmanı Devam Ediyor',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuqpyMKktjhBJLvKhMEBEwQ9QOyyBj17IE1A&s',
      'description':
          'Galatasaray, bu sezon şampiyonluk hedefiyle antrenmanlarını sürdürüyor. Antrenmanlarda yeni oyuncuların uyum süreci, teknik direktörün stratejik hamleleri ve takım içindeki rekabet oldukça heyecan verici...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Haberler"),
        backgroundColor: drawerrenklerim,
      ),
      body: ListView.builder(
        itemCount: newsData.length,
        itemBuilder: (context, index) {
          final item = newsData[index];
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(
                    item['title']!,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          child: Image.network(item['image']!),
                        ),
                        SizedBox(height: 10),
                        Text(
                          item['description']!,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Kapat'),
                    ),
                  ],
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                title:
                    Text(item['title']!, style: TextStyle(color: Colors.blue)),
                leading: Image.network(
                  item['image']!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
