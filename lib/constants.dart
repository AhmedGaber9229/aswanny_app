import 'package:flutter/material.dart';

final hintTxtStyle = TextStyle(
  color: Color(0xFFffae19),
  fontFamily: 'OpenSans',
);

final lblStyle = TextStyle(
  color: Colors.orange,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final bxDecorationStyle = BoxDecoration(
  color: Color(0xFF000000),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.orange,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);