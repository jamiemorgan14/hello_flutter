import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:navigation_app/art_route.dart';
import 'package:navigation_app/art_util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigating art',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Art Tab'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.art_track_outlined),
                  text: ArtUtil.CARAVAGGIO,
                ),
                Tab(
                  icon: Icon(Icons.art_track_outlined),
                  text: ArtUtil.MONET,
                ),
                Tab(
                  icon: Icon(Icons.art_track_outlined),
                  text: ArtUtil.VANGOGH,
                ),
              ],
            ),
          ),
          body: TabBarView(
            dragStartBehavior: DragStartBehavior.down,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(ArtUtil.IMG_CARAVAGGIO),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(ArtUtil.IMG_MONET),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(ArtUtil.IMG_VANGOGH),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
