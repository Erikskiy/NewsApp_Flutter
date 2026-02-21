import 'package:flutter/material.dart';

AppBar aboutNewsPageAppbar(context){
  return AppBar(
    title: Text(
        "Information",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        )
    ),
    backgroundColor: Color.fromARGB(255, 10, 28, 78),
    centerTitle: true,
    leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          size: 40,
          color: Colors.white,
        )
    ),
  );
}