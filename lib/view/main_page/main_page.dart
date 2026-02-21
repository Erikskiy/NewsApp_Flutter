import 'package:flutter/material.dart';
import 'main_page_appbar.dart';
import 'main_page_body/main_page_body.dart';

class MainPageClass extends StatefulWidget{
  @override
  State<MainPageClass> createState() => MainPageClassState();
}

class MainPageClassState extends State<MainPageClass> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainPageAppbar(),
      body: MainPageBodyClass(),
      backgroundColor: Color.fromARGB(255, 10, 28, 78),
    );
  }
}