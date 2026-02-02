import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/azkar_Screen.dart';
import 'package:test_app/cubit/azkar_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarCubit([]),
      child: MaterialApp(
        home: AzkarCategoriesScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
