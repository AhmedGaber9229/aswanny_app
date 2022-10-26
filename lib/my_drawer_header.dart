import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 138, 163, 218),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('assets/images/profile.png'),
              ),
            ),
          ),
          Text(
            "مديرية التربية والتعليم بأسوان",
            style: TextStyle(
                color: Colors.white, fontFamily: 'Cairo', fontSize: 20),
          ),
          Text(
            "إدارة أسوان التعليمية",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
