import 'package:flutter/material.dart';

class ColumnSample extends StatelessWidget {
  const ColumnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RPSV_CODES')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.android), Text('Android')],
              ),
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
              child: Icon(Icons.add),
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
