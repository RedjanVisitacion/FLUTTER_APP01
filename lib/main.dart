import 'package:flutter/material.dart';
import 'package:flutter_app01/pages/appbar_sample.dart';
import 'package:flutter_app01/pages/buttons_sample.dart';
import 'package:flutter_app01/pages/column_sample.dart';
import 'package:flutter_app01/pages/home_page.dart';
import 'package:flutter_app01/pages/row_sample.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RPSV_CODES',
      home:
          //RowSample(),
          //ColumnSample(),
          //AppbarSample(),
          //ButtonsSample(),
          HomePage(),

    );
  }
}
