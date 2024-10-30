import 'package:flutter/material.dart';
import 'package:login_chatbot/login_page.dart';
import 'chat_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gemini AI Chatbot',
      initialRoute: '/login', // Define a página de login como inicial
      routes: {
        '/login': (context) => const LoginPage(),
        '/chat': (context) => const ChatScreen(),
      },
    );
  }
}
