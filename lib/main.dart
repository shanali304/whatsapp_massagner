import 'package:flutter/material.dart';
import 'package:whatsapp_massagner/common/theme/dark_theme.dart';
import 'package:whatsapp_massagner/common/theme/light_theme.dart';
import 'package:whatsapp_massagner/feature/auth/pages/login.dart';
import 'package:whatsapp_massagner/feature/auth/pages/verification_page.dart';

import 'feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'whatsapp me',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const  VerificataionPage(),
      
    );
  }
}

