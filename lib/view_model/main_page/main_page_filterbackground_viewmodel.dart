import 'package:flutter/material.dart';

class MainPageFilterBackgroundViewModelClass {
  Color filterBackgroundColorTopNews = Colors.blue;
  Color filterBackgroundColorSports = Colors.transparent;
  Color filterBackgroundColorTechnology = Colors.transparent;
  Color filterBackgroundColorScience = Colors.transparent;
  Color filterBackgroundColorHealth = Colors.transparent;
  Color filterBackgroundColorBusiness = Colors.transparent;
  Color filterBackgroundColorPolitic = Colors.transparent;
  Color filterBackgroundColorWeather = Colors.transparent;

  void funcFilter(String filterName){
    if(filterName == "Search"){
      filterBackgroundColorTopNews = Colors.transparent;
      filterBackgroundColorSports = Colors.transparent;
      filterBackgroundColorTechnology = Colors.transparent;
      filterBackgroundColorScience = Colors.transparent;
      filterBackgroundColorHealth = Colors.transparent;
      filterBackgroundColorBusiness = Colors.transparent;
      filterBackgroundColorPolitic = Colors.transparent;
      filterBackgroundColorWeather = Colors.transparent;
    }
    if(filterName == "Top news"){
      filterBackgroundColorTopNews = Colors.blue;
      filterBackgroundColorSports = Colors.transparent;
      filterBackgroundColorTechnology = Colors.transparent;
      filterBackgroundColorScience = Colors.transparent;
      filterBackgroundColorHealth = Colors.transparent;
      filterBackgroundColorBusiness = Colors.transparent;
      filterBackgroundColorPolitic = Colors.transparent;
      filterBackgroundColorWeather = Colors.transparent;
    }
    if(filterName == "Sports"){
      filterBackgroundColorTopNews = Colors.transparent;
      filterBackgroundColorSports = Colors.green;
      filterBackgroundColorTechnology = Colors.transparent;
      filterBackgroundColorScience = Colors.transparent;
      filterBackgroundColorHealth = Colors.transparent;
      filterBackgroundColorBusiness = Colors.transparent;
      filterBackgroundColorPolitic = Colors.transparent;
      filterBackgroundColorWeather = Colors.transparent;
    }
    if(filterName == "Technology"){
      filterBackgroundColorTopNews = Colors.transparent;
      filterBackgroundColorSports = Colors.transparent;
      filterBackgroundColorTechnology = Colors.tealAccent;
      filterBackgroundColorScience = Colors.transparent;
      filterBackgroundColorHealth = Colors.transparent;
      filterBackgroundColorBusiness = Colors.transparent;
      filterBackgroundColorPolitic = Colors.transparent;
      filterBackgroundColorWeather = Colors.transparent;
    }
    if (filterName == "Science") {
      filterBackgroundColorTopNews = Colors.transparent;
      filterBackgroundColorSports = Colors.transparent;
      filterBackgroundColorTechnology = Colors.transparent;
      filterBackgroundColorScience = Colors.purple;
      filterBackgroundColorHealth = Colors.transparent;
      filterBackgroundColorBusiness = Colors.transparent;
      filterBackgroundColorPolitic = Colors.transparent;
      filterBackgroundColorWeather = Colors.transparent;
    }
    if (filterName == "Health") {
      filterBackgroundColorTopNews = Colors.transparent;
      filterBackgroundColorSports = Colors.transparent;
      filterBackgroundColorTechnology = Colors.transparent;
      filterBackgroundColorScience = Colors.transparent;
      filterBackgroundColorHealth = Colors.red;
      filterBackgroundColorBusiness = Colors.transparent;
      filterBackgroundColorPolitic = Colors.transparent;
      filterBackgroundColorWeather = Colors.transparent;
    }
    if (filterName == "Business") {
      filterBackgroundColorTopNews = Colors.transparent;
      filterBackgroundColorSports = Colors.transparent;
      filterBackgroundColorTechnology = Colors.transparent;
      filterBackgroundColorScience = Colors.transparent;
      filterBackgroundColorHealth = Colors.transparent;
      filterBackgroundColorBusiness = Colors.orangeAccent;
      filterBackgroundColorPolitic = Colors.transparent;
      filterBackgroundColorWeather = Colors.transparent;
    }
    if (filterName == "Politic") {
      filterBackgroundColorTopNews = Colors.transparent;
      filterBackgroundColorSports = Colors.transparent;
      filterBackgroundColorTechnology = Colors.transparent;
      filterBackgroundColorScience = Colors.transparent;
      filterBackgroundColorHealth = Colors.transparent;
      filterBackgroundColorBusiness = Colors.transparent;
      filterBackgroundColorPolitic = Colors.teal;
      filterBackgroundColorWeather = Colors.transparent;
    }
    if (filterName == "Weather") {
      filterBackgroundColorTopNews = Colors.transparent;
      filterBackgroundColorSports = Colors.transparent;
      filterBackgroundColorTechnology = Colors.transparent;
      filterBackgroundColorScience = Colors.transparent;
      filterBackgroundColorHealth = Colors.transparent;
      filterBackgroundColorBusiness = Colors.transparent;
      filterBackgroundColorPolitic = Colors.transparent;
      filterBackgroundColorWeather = Colors.blueAccent;
    }
  }

}