import 'package:creativeassignment1/main.dart';
import 'package:creativeassignment1/screens/constants.dart';
import 'package:flutter/material.dart';

import 'customrow.dart';

class QuotesScreen extends StatelessWidget {
  // This screen demonstrates the use of the default ListView constructor
  static const routeName = '/quotesScreen';

  @override
  Widget build(BuildContext context) {
    quoteList.resetIndex();
    // resets the quoteList position to avoid a null reference when navigating
    // between screens that use it

    return Scaffold(
      //
      // appbar
      appBar: AppBar(
        title: Text(Constants.QUOTES_SCREEN_TITLE),
      ),
      //
      // body
      // quote listview
      body: ListView(
        children: <Widget>[
          //
          // quote 0
          CustomRow(quote: quoteList.getNext()),
          //
          // quote 1
          CustomRow(quote: quoteList.getNext()),
          //
          // quote 2
          CustomRow(quote: quoteList.getNext()),
          //
          // quote 3
          CustomRow(quote: quoteList.getNext()),
          //
          // quote 4
          CustomRow(quote: quoteList.getNext()),
          //
          // quote 5
          CustomRow(quote: quoteList.getNext()),
          //
          // quote 6
          CustomRow(quote: quoteList.getNext()),
          //
          // quote 6
          CustomRow(quote: quoteList.getNext()),
          //
          // quote 7
          CustomRow(quote: quoteList.getNext()),
        ],
      ),
    );
  }
}
