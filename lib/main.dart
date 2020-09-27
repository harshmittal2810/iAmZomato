import 'package:flutter/material.dart';
import 'package:iamZomato/routes.dart';

void main() {
  runApp(ZomatoApp());
}

class ZomatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iAmZomato',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Routes(),
      // home: Home(),
    );
  }
}
