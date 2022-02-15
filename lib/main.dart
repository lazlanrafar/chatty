import 'package:chatty/pages/message_page.dart';
import 'package:flutter/material.dart';
// import './pages/home_page.dart';
import './pages/message_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const MessagePage(),
    );
  }
}
