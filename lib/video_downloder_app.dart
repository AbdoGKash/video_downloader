import 'package:flutter/material.dart';

import 'features/home/home_screen.dart';

class VideoDownloderApp extends StatelessWidget {
  const VideoDownloderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
