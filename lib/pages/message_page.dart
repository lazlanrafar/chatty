import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type Something',
              style: subtitleTextStyle,
            ),
            Icon(Icons.send)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffF8FAFC),
      floatingActionButton: chatInput(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(30))),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/group1.png',
                      height: 55,
                      width: 55,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Text(
                          'Moba Analog',
                          style: titleTextStyle,
                        ),
                        Text(
                          '14,209 members',
                          style: subtitleTextStyle,
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.phone),
                      color: greenColor,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            const ChatBubble(
                imageUrl: 'assets/images/friend2.png',
                text: 'How are you guys? ',
                time: '2:30'),
            const ChatBubble(
                imageUrl: 'assets/images/friend1.png',
                text: 'Find here :P',
                time: '3:11'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 11,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thinking about how to deal',
                            style: TextStyle(fontSize: 16, color: primaryColor),
                          ),
                          Text(
                            '22:08',
                            style:
                                subtitleTextStyle.copyWith(color: primaryColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    'assets/images/my.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
            const ChatBubble(
                imageUrl: 'assets/images/friend1.png',
                text: 'Love them',
                time: '23:11'),
          ],
        ),
      ),
    );
  }
}
