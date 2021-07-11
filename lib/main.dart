import 'package:flutter/material.dart';
import 'package:wisata/theme/theme.dart';
import 'package:wisata/ui/auth/auth.dart';

import 'package:wisata/ui/ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel Agent",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: redColor,
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: GeneralScreen(),
    );
  }
}
