import 'package:flutter/material.dart';

import 'package:goldapp/main_screen.dart';
import 'package:goldapp/network/diohelper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
