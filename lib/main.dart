import 'package:chat_gpt/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';

void main() {
  runApp(const ChatGpt());
}

class ChatGpt extends StatelessWidget {
  const ChatGpt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: cardColor,
        ),
      ),
      home: const ChatScreen(),
    );
  }
}
