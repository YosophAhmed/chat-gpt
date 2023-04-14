import 'package:chat_gpt/services/assets_manger.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Image.asset(
          AssetsManger.openAiLogo,
        ),
      ),
    );
  }
}
