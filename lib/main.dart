import 'package:flutter/material.dart';
import 'Pages/bottom_bar.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //adding bottom bar to our Hone Screen
      home: BottomBar(),
    );
  }
}
