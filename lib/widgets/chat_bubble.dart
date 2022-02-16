import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatBubble extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  const ChatBubble(
      {Key? key,
      required this.imageUrl,
      required this.text,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffEAEFF3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 11,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 16, color: primaryColor),
                  ),
                  Text(
                    time,
                    style: subtitleTextStyle.copyWith(color: primaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
