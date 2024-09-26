import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:st_m_counter_app/controller/counter_comntroller.dart';
import 'package:st_m_counter_app/view/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterController(),
      child: MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          brightness: Brightness.dark,
        )),
        home: Home(),
      ),
    );
  }
}
