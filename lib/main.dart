import 'package:flutter/material.dart';
import 'package:video_pla/views/screens/home.dart';
import 'package:video_pla/views/screens/video.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'video_page': (context) => const VideoPage(),
      },
    );
  }
}
