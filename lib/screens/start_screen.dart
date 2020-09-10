import 'package:creativeassignment1/screens/quotes_screen.dart';
import 'package:creativeassignment1/screens/quotesfrombuilder_screen.dart';
import 'package:creativeassignment1/screens/quotesseparated_screen.dart';
import 'package:creativeassignment1/screens/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // This is the starting screen of the app (aka home or /)
  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // appbar
      appBar: AppBar(
        title: Text(Constants.START_SCREEN_TITLE),
      ),
      //
      // body
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Wrap(
                children: [
                  //
                  // ListView button
                  RaisedButton(
                    splashColor: Constants.PRIMARY_COLOR_LIGHT,
                    onPressed: () =>
                        Navigator.pushNamed(context, QuotesScreen.routeName),
                    child: Text(Constants.QUOTES_SCREEN_TITLE),
                  ),
                  //
                  // ListView.builder button
                  RaisedButton(
                    splashColor: Constants.PRIMARY_COLOR_LIGHT,
                    onPressed: () => Navigator.pushNamed(
                        context, QuoteFromBuilderScreen.routeName),
                    child: Text(Constants.QUOTES_FROM_BUILDER_TITLE),
                  ),
                  //
                  // ListView.separated button
                  RaisedButton(
                    splashColor: Constants.PRIMARY_COLOR_LIGHT,
                    onPressed: () => Navigator.pushNamed(
                        context, QuotesSeparatedScreen.routeName),
                    child: Text(Constants.QUOTES_SEPARATED_TITLE),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
