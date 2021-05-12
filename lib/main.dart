import 'package:flutter/material.dart';

void main() {
  runApp(BirdApp());
}

class BirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        toolbarHeight: 70,
        title: Center(
          child: Text(
            "Birds Images",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              fontSize: 42,
            ),
          ),
        ),
        backgroundColor: Colors.white
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              // child: Expanded(
              //   child: Image(
              //     image: AssetImage('images/Rosy starling.jpg'),
              //   ),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
