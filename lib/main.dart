import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/view/main_page/main_page.dart';
import 'package:newsapp/view_model/bloc/news_description_bloc.dart';

void main() {
  runApp(
      BlocProvider(
        create: (context) => BlocClass(),
        child: MyApp(),
      )
  );
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  String userApiKey = "PUT_YOUR_API_KEY_HERE";

  @override
  void initState() {
    context.read<BlocClass>().add(NewUserApiKeyBlockClass("${userApiKey}"));
    context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=*&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPageClass(),
    );
  }
}
