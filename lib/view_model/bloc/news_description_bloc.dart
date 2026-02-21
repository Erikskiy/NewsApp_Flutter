import 'package:bloc/bloc.dart';

class BlocClass extends Bloc<EventsBlocClass, StateBlocClass>{
  BlocClass():super(StateBlocClass("", "", "", "", "", "", "", "", "",)){

    on<NewDescriptionEventsBlocClass>((event, emit){
      emit(StateBlocClass(state.userApiKey, state.api, event.name, event.author, event.title, event.description, event.url, event.urlToImage, event.publishedAt,));
    });

    on<NewApiEventsBlocClass>((event, emit){
      emit(StateBlocClass(state.userApiKey, event.api, state.name, state.author, state.title, state.description, state.url, state.urlToImage, state.publishedAt,));
    });

    on<NewUserApiKeyBlockClass>((event, emit){
      emit(StateBlocClass(event.userApiKey, state.api, state.name, state.author, state.title, state.description, state.url, state.urlToImage, state.publishedAt,));
    });

  }
}

class StateBlocClass{
  final String userApiKey;
  final String api;
  final String name;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;

  StateBlocClass(
      this.userApiKey,
      this.api,
      this.name,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      );
}

abstract class EventsBlocClass{}
class NewDescriptionEventsBlocClass extends EventsBlocClass{
  final String name;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;

  NewDescriptionEventsBlocClass(
      this.name,
      this.author,
      this.title, this.description, this.url, this.urlToImage, this.publishedAt,);
}

class NewApiEventsBlocClass extends EventsBlocClass{
  final String api;
  NewApiEventsBlocClass(this.api);
}

class NewUserApiKeyBlockClass extends EventsBlocClass{
  final userApiKey;
  NewUserApiKeyBlockClass(this.userApiKey);
}