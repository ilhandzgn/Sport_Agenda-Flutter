import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

class SportScreen extends StatefulWidget {
  const SportScreen({super.key});

  @override
  State<SportScreen> createState() => _SportScreenState();
}

class _SportScreenState extends State<SportScreen> {
  String selectedSport = 'Hiçbiri'; // Varsayılan spor dalı

  void _showSportSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: drawerrenklerim,
          title: const Text('Spor Dalı Seçin'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Futbol'),
                leading: const Icon(Icons.sports_soccer),
                onTap: () {
                  setState(() {
                    selectedSport = 'Futbol';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Voleybol'),
                leading: const Icon(Icons.sports_volleyball),
                onTap: () {
                  setState(() {
                    selectedSport = 'Voleybol';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Basketbol'),
                leading: const Icon(Icons.sports_basketball),
                onTap: () {
                  setState(() {
                    selectedSport = 'Basketbol';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Tüm Spor Dalları'),
                leading: const Icon(Icons.sports),
                onTap: () {
                  setState(() {
                    selectedSport = 'Tüm Spor Dalları';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spor Seçimi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Seçilen Spor Dalı: $selectedSport',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showSportSelectionDialog(context),
              child: const Text('Spor Dalı Seç'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
