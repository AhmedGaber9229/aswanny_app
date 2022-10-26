// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                boxShadow: const [BoxShadow(blurRadius: 10)],
                border: Border.all(color: Colors.black, width: 1)),
            child: Center(
                child: Image(
              image: AssetImage('assets/images/tdc.jpg'),
            )),
          ),
        ),
      ),
    );
    // Container(
    //   child: Center(
    //     child: Text(
    //       "Welcome",
    //       style:
    //           TextStyle(color: Colors.red, fontFamily: 'Cairo', fontSize: 20),
    //       textAlign: TextAlign.center,
    //     ),
    //   ),
    // );
  }
}
