import 'package:flutter/material.dart';
import 'package:ng_demo3/pages/first_page.dart';
import 'package:ng_demo3/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
        routes: {
          HomePage.id: (context) => HomePage(),
          FirstPage.id: (context) => FirstPage(),
        });
  }
}
