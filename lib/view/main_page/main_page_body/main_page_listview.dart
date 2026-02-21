import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../view_model/bloc/news_description_bloc.dart';
import '../../../view_model/main_page/main_page_get_news_viewmodel.dart';
import '../../about_news_page/about_news_page.dart';

class MainPageListViewClass extends StatelessWidget{
  MainPageGetNewsViewModelClass funcMainPageGetNewsViewModelClass = MainPageGetNewsViewModelClass();

  @override
  Widget build(BuildContext context) {
    String apiKey = context.watch<BlocClass>().state.api;

    return FutureBuilder<List>(
      future: funcMainPageGetNewsViewModelClass.funcApiGetNews(apiKey),
      builder: (context, snapshot) {
        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: snapshot.data?.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.read<BlocClass>().add(NewDescriptionEventsBlocClass(snapshot.data![index].name, snapshot.data![index].author, snapshot.data![index].title, snapshot.data![index].description, snapshot.data![index].url, snapshot.data![index].urlToImage, snapshot.data![index].publishedAt,),);
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutNewsPageClass(),));
              },
              child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10,),
                  height: 120,
                  child: Row(
                    children: [
                      SizedBox(
                        child: snapshot.data![index].urlToImage != null && snapshot.data![index].urlToImage!.isNotEmpty
                            ? Image.network(""
                            "${snapshot.data![index].urlToImage}",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return ColoredBox(color: Colors.black);
                          },
                        )
                            : ColoredBox(color: Colors.black,),
                        width: 120,
                        height: 120,
                      ),

                      SizedBox( height: 10, width: 10, ),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              child: Text(
                                "${snapshot.data![index].title}",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    snapshot.data![index].name ?? '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  snapshot.data![index].publishedAt.substring(0, 10),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white38,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            );
          },
        );
      },
    );
  }

}