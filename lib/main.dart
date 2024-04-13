import 'package:aplikasi_provider/provider/all_makanan.dart';
import 'package:aplikasi_provider/screen/makanan_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => Makanans(),
        child: MakananScreen(),
      ),
    );
  }
}
