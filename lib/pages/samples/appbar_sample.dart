import 'package:flutter/material.dart';
import 'package:flutter_app01/pages/home_page.dart';

class AppbarSample extends StatelessWidget {
  const AppbarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerButton(),
        title: Text('RPSV_CODES'),
        backgroundColor: Colors.blue,

        actions: [
          GestureDetector(
            child: Icon(Icons.person),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
