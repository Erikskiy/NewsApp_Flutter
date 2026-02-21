import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar mainPageAppbar(){
  return AppBar(
    title: Text(
        "News",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        )
    ),
    backgroundColor: Color.fromARGB(255, 10, 28, 78),
    centerTitle: true,
    leading: IconButton(
        onPressed: (){
          SystemNavigator.pop();
        },
        icon: Icon(
          Icons.exit_to_app,
          size: 40,
          color: Colors.white,
        )
    ),
  );
}