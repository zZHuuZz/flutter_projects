import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 105, 94),
          leading: IconButton(
            icon: Icon(
              Icons.dehaze_rounded,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          title: Text('Business card'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  height: 22.0,
                ),
              ),
              Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Color.fromARGB(255, 218, 251, 0),
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
              Center(
                child: Text(
                  'Thien Duc',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Satisfy',
                  ),
                ),
              ),
              Center(
                child: Text(
                  'SENIOR FRONT-END DEVELOPER',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color.fromARGB(194, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box,
                    size: 30.0,
                  ),
                  title: Text('Thien\'s account'),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.add_ic_call,
                    size: 30.0,
                  ),
                  title: Text('+84 0939 393939'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
