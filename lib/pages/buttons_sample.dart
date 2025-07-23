import 'package:flutter/material.dart';
import 'package:flutter_app01/pages/home_page.dart';

class ButtonsSample extends StatelessWidget {
  const ButtonsSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Icon(Icons.person),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login')),
            SizedBox(height: 5),
            OutlinedButton(onPressed: () {}, child: Text('Register')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
