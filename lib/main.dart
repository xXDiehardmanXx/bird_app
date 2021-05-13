import 'package:flutter/material.dart';

void main() {
  runApp(BirdApp());
}

class BirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home_rounded,
                  color: Colors.black,
                  size: 30.0,
                ),
                Center(
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
                Icon(
                  Icons.info_rounded,
                  color: Colors.black,
                  size: 30.0,
                ),
              ],
            ),
            backgroundColor: Colors.white),
        body: SafeArea(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.only(top: 30.0),
                color: Colors.white24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Know",
                      style: TextStyle(
                        fontSize: 48.0,
                        fontFamily: 'Pacifico',
                        color: Colors.white
                      ),
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 100.0,
                        child: Image(
                          image: AssetImage('images/bird_painted.jpg'),
                        ),
                    ),
                    Text(
                        "Birds",
                        style: TextStyle(
                            fontSize: 48.0,
                            fontFamily: 'Pacifico',
                            color: Colors.white
                        )
                    )
                  ],
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  title: Text(
                    'Trending',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Raleway',
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child:Image(
                          image: AssetImage('images/Ashy crowned sparrow lark female.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Image(
                        image: AssetImage('images/Bluethroat.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child:Image(
                        image: AssetImage('images/Barred buttonquail.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Image(
                        image: AssetImage('images/Baya weaver.jpg'),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
