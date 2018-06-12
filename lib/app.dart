import 'package:cathem/widgets/homepage.dart';
import 'package:flutter/material.dart';

class CathemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cathem',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(title: 'Cathem'),
    );
  }
}
