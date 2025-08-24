import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app01/pages/samples/appbar_sample.dart';
import 'package:flutter_app01/pages/samples/buttons_sample.dart';
import 'package:flutter_app01/pages/samples/column_sample.dart';
import 'package:flutter_app01/pages/home_page.dart';
import 'package:flutter_app01/pages/samples/row_sample.dart';
import 'package:flutter_app01/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RPSV_CODES',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/row': (context) => RowSample(),
        '/column': (context) => ColumnSample(),
        '/appbar': (context) => AppbarSample(),
        '/buttons': (context) => ButtonsSample(),
      },
    );
  }
}
