import 'package:chat_gpt/constants/constants.dart';
import 'package:chat_gpt/services/assets_manger.dart';
import 'package:chat_gpt/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String message;
  final int chatIndex;

  const ChatWidget({
    Key? key,
    required this.message,
    required this.chatIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  chatIndex == 0
                      ? AssetsManger.userImage
                      : AssetsManger.botImage,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                TextWidget(
                  label: message,
                ),
                chatIndex == 0
                    ? const SizedBox.shrink()
                    : IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.copy,
                          color: Colors.white,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
