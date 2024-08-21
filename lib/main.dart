import 'package:flutter/material.dart';
import 'package:practice5/intro.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      routes: {
        '/': (context)=> const PageViewExample()
      },
    );
  }
}
