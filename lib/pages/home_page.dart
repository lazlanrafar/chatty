import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/profile.png',
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Sabrina Carpenter',
              style: TextStyle(fontSize: 20, color: whiteColor),
            ),
            Text(
              'Travel Freelancer',
              style: TextStyle(fontSize: 16, color: mutedColor),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(40),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Friends',
                    style: titleTextStyle,
                  ),
                  const ChatTile(
                    imageUrl: 'assets/images/friend1.png',
                    name: 'Susi Susanti',
                    text: 'Ws madang urung mbok ?',
                    time: 'NOW',
                    isRead: true,
                  ),
                  const ChatTile(
                    imageUrl: 'assets/images/friend2.png',
                    name: 'Jamludin',
                    text: 'Mabar Gan ╰(*°▽°*)╯',
                    time: '15.23',
                  ),
                  const ChatTile(
                    imageUrl: 'assets/images/friend2.png',
                    name: 'Bambang',
                    text: 'ಥ_ಥ',
                    time: '15.00',
                    isRead: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Groups',
                    style: titleTextStyle,
                  ),
                  const ChatTile(
                    imageUrl: 'assets/images/group1.png',
                    name: 'Moba Analog',
                    text: 'Why does everyone ca...',
                    time: '11.11',
                    isRead: true,
                  ),
                  const ChatTile(
                    imageUrl: 'assets/images/group2.png',
                    name: 'Anak Mamah',
                    text: 'Mama mana woy!!',
                    time: '11.00',
                  ),
                  const ChatTile(
                    imageUrl: 'assets/images/group3.png',
                    name: 'Bar Bar Esport',
                    text: 'By one tod',
                    time: '23.00',
                  ),
                  const ChatTile(
                    imageUrl: 'assets/images/group2.png',
                    name: 'IT Inventory',
                    text: 'Hiks',
                    time: '23.00',
                    isRead: true,
                  ),
                  const ChatTile(
                    imageUrl: 'assets/images/group3.png',
                    name: 'Bar Bar Esport',
                    text: 'By one tod',
                    time: '23.00',
                  ),
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }
}
