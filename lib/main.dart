import 'package:book_store/screens/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// API LINK
// https://my.api.mockaroo.com/bookshop_data.json?key=92980d10

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookShop App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
    );
  }
}
