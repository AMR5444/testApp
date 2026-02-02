import 'package:flutter/material.dart';
import 'package:test_app/ELAZKAR/Azka_ElmasaScreen.dart';
import 'package:test_app/ELAZKAR/Azkar_Baad_ElSalatScreenelsalah.dart';
import 'package:test_app/ELAZKAR/Azkar_ElnomScreen.dart';
import 'package:test_app/ELAZKAR/Azkar_ElsabahScreen.dart';
import 'package:test_app/ELAZKAR/Azkar_elwodoaScreen.dart';

class AzkarCategoriesScreen extends StatelessWidget {
  const AzkarCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        'title': 'أذكار الصباح',
        'screen': AzkarElsabahScreen(title: 'أذكار الصباح'),
      },
      {
        'title': 'أذكار المساء',
        'screen': AzkarElmasaScreen(title: 'أذكار المساء'),
      },
      {
        'title': 'أذكار النوم',
        'screen': AzkarElnomScreen(title: 'أذكار النوم'),
      },
      {
        'title': 'أذكار بعد الصلاة',
        'screen': AzkarBaadElsalahScreen(title: 'أذكار بعد الصلاة'),
      },
      {
        'title': 'أذكار الوضوء',
        'screen': AzkarElwodo2Screen(title: 'أذكار الوضوء'),
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('الأذكار'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => categories[index]['screen'] as Widget,
                  ),
                );
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    categories[index]['title'].toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
