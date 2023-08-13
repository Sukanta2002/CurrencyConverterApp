import 'package:currency_converter_app/curency_converter_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CupertinoPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurencyConverterMaterialPage(),
    );
  }
}

class CupertinoPage extends StatelessWidget {
  const CupertinoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurencyConverterMaterialPage(),
    );
  }
}
