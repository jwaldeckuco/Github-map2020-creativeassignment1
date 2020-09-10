import 'package:creativeassignment1/quotelist.dart';
import 'package:creativeassignment1/screens/quotes_screen.dart';
import 'package:creativeassignment1/screens/quotesfrombuilder_screen.dart';
import 'package:creativeassignment1/screens/quotesseparated_screen.dart';
import 'package:creativeassignment1/screens/start_screen.dart';
import 'package:creativeassignment1/screens/constants.dart';
import 'package:flutter/material.dart';

var quoteList = QuoteList();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // static const Color PRIMARY_COLOR = Color(0xFFFFC107);
  // static const Color PRIMARY_COLOR_LIGHT = Color(0xFFFFF350);
  // static const Color PRIMARY_COLOR_DARK = Color(0xFFC79100);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.APP_NAME,
      theme: ThemeData(
        //
        // material.io/resources/color - color tool, but it doesn't display the pallete in Colors
        // style, so you have to construct the color.
        // insert the two digit transparency code to the beginning of the code, FF opaque, 00 transparent

        brightness: Brightness.dark,
        primaryColor: Constants.PRIMARY_COLOR,
        primaryColorLight: Constants.PRIMARY_COLOR_LIGHT,
        primaryColorDark: Constants.PRIMARY_COLOR_DARK,
        buttonColor: Constants.PRIMARY_COLOR_DARK,
      ),
      //
      // routes
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        QuotesScreen.routeName: (context) => QuotesScreen(),
        QuoteFromBuilderScreen.routeName: (context) => QuoteFromBuilderScreen(),
        QuotesSeparatedScreen.routeName: (context) => QuotesSeparatedScreen(),
      },
    );
  }
}
