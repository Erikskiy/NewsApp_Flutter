import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/view_model/bloc/news_description_bloc.dart';
import '../../../view_model/main_page/main_page_filterbackground_viewmodel.dart';
import '../../../view_model/main_page/main_page_get_news_viewmodel.dart';
import 'main_page_listview.dart';

class MainPageBodyClass extends StatefulWidget{
  @override
  State<MainPageBodyClass> createState() => MainPageBodyClassState();
}

class MainPageBodyClassState extends State<MainPageBodyClass> {
  MainPageGetNewsViewModelClass funcMainPageGetNewsViewModelClass = MainPageGetNewsViewModelClass();
  MainPageFilterBackgroundViewModelClass funcMainPageFilterBackgroundViewModelClass = MainPageFilterBackgroundViewModelClass();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String apiKey = context.watch<BlocClass>().state.api;
    String userApiKey = context.watch<BlocClass>().state.userApiKey;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox( height: 20, width: 20, ),

          Row(
            children: [
              SizedBox( height: 10, width: 10, ),

              Expanded(
                child: TextField(
                  controller: textEditingController,
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value) {
                    if (value.trim().isEmpty) return;
                    setState(() {
                      funcMainPageFilterBackgroundViewModelClass.funcFilter("Search");
                    });
                    context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=${value}&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25),),
                        borderSide: BorderSide(color: Colors.white,)
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),

              SizedBox( height: 10, width: 10, ),
            ],
          ),

          SizedBox( height: 20, width: 20, ),

          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox( height: 10, width: 10, ),

                Container(
                  child: TextButton(
                    onPressed: (){
                     setState(() {
                       funcMainPageFilterBackgroundViewModelClass.funcFilter("Top news");
                       context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=*&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                     });},
                    child: Text(
                      " Top news ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: funcMainPageFilterBackgroundViewModelClass.filterBackgroundColorTopNews,
                    border: Border.all(color: Colors.blue,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),

                SizedBox( height: 10, width: 10, ),

                Container(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        funcMainPageFilterBackgroundViewModelClass.funcFilter("Sports");
                        context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=спорт&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                      });
                    },
                    child: Text(
                      " Sports ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: funcMainPageFilterBackgroundViewModelClass.filterBackgroundColorSports,
                    border: Border.all(color: Colors.green,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),

                SizedBox( height: 10, width: 10, ),

                Container(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        funcMainPageFilterBackgroundViewModelClass.funcFilter("Technology");
                        context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=технология&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                      });},
                    child: Text(
                      " Technology ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: funcMainPageFilterBackgroundViewModelClass.filterBackgroundColorTechnology,
                    border: Border.all(color: Colors.tealAccent,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),

                SizedBox( height: 10, width: 10, ),

                Container(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        funcMainPageFilterBackgroundViewModelClass.funcFilter("Science");
                        context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=наука&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                      });
                    },
                    child: Text(
                      " Science ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: funcMainPageFilterBackgroundViewModelClass.filterBackgroundColorScience,
                    border: Border.all(color: Colors.purple,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),

                SizedBox( height: 10, width: 10, ),

                Container(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        funcMainPageFilterBackgroundViewModelClass.funcFilter("Health");
                        context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=здоровье&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                      });
                    },
                    child: Text(
                      " Health ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: funcMainPageFilterBackgroundViewModelClass.filterBackgroundColorHealth,
                    border: Border.all(color: Colors.red,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),

                SizedBox( height: 10, width: 10, ),

                Container(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        funcMainPageFilterBackgroundViewModelClass.funcFilter("Business");
                        context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=бизнес&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                      });
                    },
                    child: Text(
                      " Business ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: funcMainPageFilterBackgroundViewModelClass.filterBackgroundColorBusiness,
                    border: Border.all(color: Colors.orangeAccent,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),

                SizedBox( height: 10, width: 10, ),

                Container(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        funcMainPageFilterBackgroundViewModelClass.funcFilter("Politic");
                        context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=политика&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                      });
                    },
                    child: Text(
                      " Politic ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: funcMainPageFilterBackgroundViewModelClass.filterBackgroundColorPolitic,
                    border: Border.all(color: Colors.teal,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),

                SizedBox( height: 10, width: 10, ),

                Container(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        funcMainPageFilterBackgroundViewModelClass.funcFilter("Weather");
                        context.read<BlocClass>().add(NewApiEventsBlocClass("https://newsapi.org/v2/everything?q=погода&language=ru&sortBy=publishedAt&pageSize=100&apiKey=${userApiKey}"));
                      });
                    },
                    child: Text(
                      " Weather ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: funcMainPageFilterBackgroundViewModelClass.filterBackgroundColorWeather,
                    border: Border.all(color: Colors.blueAccent,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),

                SizedBox(
                  height: 10,
                  width: 10,
                ),
              ],
            ),
          ),

          SizedBox( height: 20, width: 20, ),

          SizedBox(
            height: 420,
            width: 420,
            child: FutureBuilder<List>(
              future: funcMainPageGetNewsViewModelClass.funcApiGetNews(apiKey),
              builder: (context, snapshot) {
                if(!snapshot.hasData){
                  return CircularProgressIndicator();
                }

                return snapshot.data![0].urlToImage != null && snapshot.data![0].urlToImage.isNotEmpty
                    ? Image.network("${snapshot.data![0].urlToImage}", fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) {
                  return ColoredBox(color: Colors.black);
                },)
                    : ColoredBox(color: Colors.black,
                );
              },
            ),
          ),

          SizedBox( height: 20, width: 20, ),

          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    "Latest News",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          SizedBox( height: 5, width: 5, ),

          MainPageListViewClass(),

          Text(
            "NewsApp",
            style: TextStyle(
              color: Colors.white38,
              fontSize: 20,
            ),
          ),

          SizedBox( height: 20, width: 20, ),
        ],
      ),
    );
  }
}