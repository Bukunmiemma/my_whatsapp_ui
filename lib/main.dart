import 'package:flutter/material.dart';
import 'package:prof_whatsapp_ui/responsive/responsive_layout.dart';
import 'package:prof_whatsapp_ui/screen/mobile_screen_layout.dart';
import 'package:prof_whatsapp_ui/screen/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp ',
      theme: ThemeData.dark(useMaterial3: true),
      home: ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
