import 'package:flutter/material.dart';
import 'package:flutter_app01/pages/appbar_sample.dart';
import 'package:flutter_app01/pages/row_sample.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('RPSV\'s HOME'))),
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/USTP_CDO.jpg"),
                  fit: BoxFit.cover,
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shadowColor: Colors.greenAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(100, 60),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AppbarSample()),
                    );
                  },
                  child: Text(
                    'Appbar Sample',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  label: Text('Person'),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 60,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RowSample()),
                      );
                    },
                    child: Text(
                      'Row Sample',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.key),
                  label: Text('Password'),
                ),

                OutlinedButton(onPressed: () {}, child: Text('Login Page')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
