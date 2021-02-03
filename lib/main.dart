import 'package:evropebet/widgets/PageContent/PageContent.dart';
import 'package:evropebet/widgets/header_menu.dart';
import 'package:evropebet/widgets/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff171718),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: MainHomePage(),
    );
  }
}

class MainHomePage extends StatefulWidget {
  MainHomePage({Key key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    var appBar = SliverAppBar(
      floating: true,
      pinned: false,
      flexibleSpace: HeaderMenu(),
      backgroundColor: Color(0xff171718),
    );
    return Scaffold(
      body: SafeArea(
          child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification notification) {
          notification.disallowGlow();
          return true;
        },
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          slivers: [
            appBar,
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.089,
                    child: MainMenu(),
                  ),
                  Container(
                    child: PageContent(),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
