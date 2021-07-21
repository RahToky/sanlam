import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sanlam/const/strings.dart';
import 'package:sanlam/ui/screen/declaration/main_declaration.dart';
import 'package:sanlam/ui/screen/home/main_home.dart';
import 'package:sanlam/util/color_util.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        DeclarationMainScreen.routeName: (context) => DeclarationMainScreen(),
      },
      theme: ThemeData(
        primaryColor: HexColor('#4800bd'),//HexColor('#227bbf'),
        accentColor: HexColor('#b19ad6'),
        buttonColor: HexColor('#4800bd'),
        focusColor: HexColor('#4800bd'),//HexColor('#20a8e5'),
        splashColor:HexColor('#4800bd'),//HexColor('#227bbf'),
        textTheme: TextTheme(
          subtitle2: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal
          ),
        ),
        appBarTheme: AppBarTheme(
          // backgroundColor: HexColor('#227bbf'),
          foregroundColor: Colors.white,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor('#713ec7'),//HexColor('#5f9fd0'),
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: HexColor('#4800bd'),
          ),
        ),
      ),
    );
  }

}
