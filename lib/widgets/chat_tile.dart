import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool isRead;

  const ChatTile(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      this.isRead = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(children: [
        Image.asset(
          imageUrl,
          height: 55,
          width: 55,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(name, style: titleTextStyle),
          Text(text,
              style: isRead
                  ? subtitleTextStyle
                  : subtitleTextStyle.copyWith(
                      color: primaryColor, fontWeight: FontWeight.w500)),
        ]),
        const Spacer(),
        Text(
          time,
          style: subtitleTextStyle,
        )
      ]),
    );
  }
}
