import 'package:flutter/material.dart';
import 'package:prof_whatsapp_ui/screen/mobile_screen_layout.dart';
import 'package:prof_whatsapp_ui/screen/web_screen_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({
    super.key,
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 900) {
          return const WebScreenLayout();
        }
        return const  MobileScreenLayout();
      },
    );
  }
}
