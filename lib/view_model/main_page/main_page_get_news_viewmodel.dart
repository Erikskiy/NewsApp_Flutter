import 'package:dio/dio.dart';
import 'package:newsapp/model/api/api_model.dart';

class MainPageGetNewsViewModelClass{
  List<ApiModelClass> listNews = [];

  Future<List<ApiModelClass>> funcApiGetNews(String apiKey) async{
    Dio dio = Dio();
    final result = await dio.get(apiKey);
    List<dynamic> listForListNews = result.data['articles'];
    listNews = listForListNews.map((json) => ApiModelClass.fromJson(json)).toList();
    return listNews;
  }
}