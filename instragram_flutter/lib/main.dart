import 'package:flutter/material.dart';
import 'package:instragram_flutter/responsive/mobile_screen_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'responsive/responsive_layout_sceen.dart';
import 'responsive/web_screen._layout.dart';
import 'utils/colors_bg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instrageam',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor
      ),
      home:  const ResponsiveLayout(
        mobileScreenLayout:MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      
      ));
  }
  
  
}

 