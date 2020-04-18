import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My intro card',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/Anup.png'),
              radius: 50,
            ),
            Text(
              'Anup Ku.',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: 'Pacifico'
              ),
            ),
            Text(
              'TECHNICAL LEAD',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro'
              ),
            ),
            SizedBox(
              width: 140,
              height: 20,
              child: Divider(
                thickness: 1.5,
                color: Colors.white70,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.teal,
                ),
                title: Text(
                  '+91 123 458 7890',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal.shade600,
                    fontFamily: 'Source Sans Pro'
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'anup.raj@fakemail.com',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal.shade600,
                    fontFamily: 'Source Sans Pro'
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
