import 'package:flutter/material.dart';
import 'package:yes_no_app/themes/app_theme.dart';
import 'package:yes_no_app/screens/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 5).theme(),
        home: const ChatScreen());
  }
}
