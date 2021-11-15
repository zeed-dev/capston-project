import 'package:capstone_apps/persentation/pages/bookmark_page.dart';
import 'package:capstone_apps/persentation/pages/home_page.dart';
import 'package:capstone_apps/persentation/pages/main_page.dart';
import 'package:capstone_apps/persentation/pages/profile_page.dart';
import 'package:capstone_apps/persentation/providers/botttom_navbar_notifer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Capston Project',
        home: MainPage(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case MainPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => MainPage());
            case HomePage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => HomePage());
            case BookmarkPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => BookmarkPage());
            case ProfilePage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => ProfilePage());
            default:
          }
        },
      ),
    );
  }
}
