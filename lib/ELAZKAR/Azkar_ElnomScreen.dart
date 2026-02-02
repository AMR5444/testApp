import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/cubit/azkar_cubit.dart';
import 'package:test_app/models/azkar_model.dart';

class AzkarElnomScreen extends StatelessWidget {
  final String title;
  AzkarElnomScreen({super.key, required this.title});
  final List<Zekaritem> azkar = [
    Zekaritem(text: 'اللّهـمَّ بك امسينا', repeat: 1),
    Zekaritem(text: 'امسينا و امسى الملك لله', repeat: 3),
    Zekaritem(text: 'سبحان الله وبحمده', repeat: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true),
      body: BlocConsumer<AzkarCubit, List<Zekaritem>>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isEmpty) {
            return const Center(child: Text('لا توجد أذكار حالياً'));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: 10,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final zekr = state[index];
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
                          zekr.text,
                          style: const TextStyle(fontSize: 18, height: 1.6),
                          textDirection: TextDirection.rtl,
                        ),
                      ),

                      const SizedBox(width: 12),

                      // Counter
                      CircleAvatar(
                        radius: 20,
                        child: Text(
                          zekr.currentCount.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
