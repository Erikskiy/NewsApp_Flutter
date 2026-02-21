import 'package:flutter/material.dart';
import 'package:newsapp/view/about_news_page/about_news_page_appbar.dart';
import 'about_news_page_body/about_news_page_body.dart';

class AboutNewsPageClass extends StatefulWidget{
  @override
  State<AboutNewsPageClass> createState() => AboutNewsPageClassState();
}

class AboutNewsPageClassState extends State<AboutNewsPageClass> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: aboutNewsPageAppbar(context),
      body: AboutNewsPageBodyClass(),
      backgroundColor: Color.fromARGB(255, 10, 28, 78),
    );
  }
}