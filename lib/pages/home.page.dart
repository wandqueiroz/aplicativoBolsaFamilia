//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transfer_within_a_station),
            title: Text("Saúde"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text("Educação"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pregnant_woman),
            title: Text("A.Social"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            title: Text("Informes"),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
      ),
      /*bottomNavigationBar: CurvedNavigationBar(
        color: Colors.green,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.green,
        height: 50,
        items: <Widget>[
          Icon(Icons.home, size: 20, color: Colors.white),
          Icon(Icons.list, size: 20, color: Colors.white),
          Icon(Icons.verified_user, size: 20, color: Colors.white),
          Icon(Icons.build, size: 20, color: Colors.white),
          Icon(Icons.fastfood, size: 20, color: Colors.white),
        ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("Current Index is $index");
        },
      ),*/
    );
  }
}
