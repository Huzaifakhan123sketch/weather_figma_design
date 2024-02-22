import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'First_Figma_Screen/bottom_navigation_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wheather Application',
      home:Bottomnavigationbar(),
    );
  }
}
