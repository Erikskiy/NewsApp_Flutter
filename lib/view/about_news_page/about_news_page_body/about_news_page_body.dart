import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/view_model/bloc/news_description_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class AboutNewsPageBodyClass extends StatefulWidget{
  @override
  State<AboutNewsPageBodyClass> createState() => AboutNewsPageBodyClassState();
}

class AboutNewsPageBodyClassState extends State<AboutNewsPageBodyClass> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox( height: 20, width: 20, ),

            Row(
              children: [
                SizedBox( height: 20, width: 20, ),

                Expanded(
                  child: Text(
                    "${context.watch<BlocClass>().state.title}",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox( height: 20, width: 20, ),
              ],
            ),

            SizedBox( height: 10, width: 10, ),

            AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: context.watch<BlocClass>().state.urlToImage.isNotEmpty
                        ? Image.network(""
                        "${context.watch<BlocClass>().state.urlToImage}",
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return ColoredBox(color: Colors.black);
                      },
                    )
                        : ColoredBox(color: Colors.black,),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: IconButton(
                          onPressed: () async {
                            final url = Uri.tryParse("${context.read<BlocClass>().state.url}");
                            await launchUrl(url!, mode: LaunchMode.externalApplication);
                          },
                          icon: Icon(
                            Icons.open_in_new,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      )
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: IconButton(
                          onPressed: () {
                            Share.share("${context.read<BlocClass>().state.url}");
                          },
                          icon: Icon(
                            Icons.ios_share,
                            color: Colors.white,
                            size: 55,
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),

            SizedBox( height: 15, width: 15, ),

            Row(
              children: [
                SizedBox( height: 20, width: 20, ),

                Icon(Icons.account_circle, size: 50, color: Colors.white,),

                SizedBox( height: 10, width: 10, ),

                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 25, color: Colors.white),
                                children: [
                                  TextSpan(text: "${context.watch<BlocClass>().state.name}"),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Icon(Icons.check_circle, color: Colors.green, size: 30),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox( height: 20, width: 20, ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "${context.watch<BlocClass>().state.author}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white38,
                              ),
                            ),
                          ),

                          SizedBox( height: 20, width: 20, ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox( height: 10, width: 10, ),

            Row(
              children: [
                SizedBox( height: 20, width: 20, ),

                Expanded(
                  child: Text(
                    "${context.watch<BlocClass>().state.description}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),

                SizedBox( height: 20, width: 20, ),
              ],
            ),

            SizedBox( height: 10, width: 10, ),

            Row(
              children: [
                SizedBox( height: 20, width: 20, ),

                Expanded(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "${context.watch<BlocClass>().state.publishedAt}",
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ),

                SizedBox( height: 20, width: 20, ),
              ],
            ),

            SizedBox( height: 20, width: 20, ),

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
      )
    );
  }
}