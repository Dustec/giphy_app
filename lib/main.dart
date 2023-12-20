import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'features/home/presentation/pages/home_provider.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');

  runApp(const GiphyApp());
}

class GiphyApp extends StatelessWidget {
  const GiphyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giphy App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const HomeProvider(),
    );
  }
}
