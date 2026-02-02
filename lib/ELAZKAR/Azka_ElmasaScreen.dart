import 'package:flutter/material.dart';

class AzkarElmasaScreen extends StatelessWidget {
  final String title;
  const AzkarElmasaScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text
                  Expanded(
                    child: Text(
                      'سبحان الله وبحمده سبحان الله العظيم',
                      style: const TextStyle(fontSize: 18, height: 1.6),
                      textDirection: TextDirection.rtl,
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Counter
                  CircleAvatar(
                    radius: 20,
                    child: Text(
                      '3',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
