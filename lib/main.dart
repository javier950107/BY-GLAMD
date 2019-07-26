import 'package:flutter/material.dart';
import 'package:shop_app/screen/shop_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {'/': (context) => ShopScreen()},
    );
  }
}
