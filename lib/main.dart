import 'package:codigo6_whatsapp_clone/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
          fontFamily: "Manrope",
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff128C7E),
          ),
          // brightness: Brightness.light,
          // useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xff10CE5F),
          )),
      home: HomePage(),
    );
  }
}
