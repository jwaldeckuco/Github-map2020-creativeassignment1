import 'package:creativeassignment1/screens/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'customrow.dart';

class QuoteFromBuilderScreen extends StatelessWidget {
  // This screen demonstrates the ListView.builder named constructor
  static const routeName = '/quoteFromBuilderScreen';

  @override
  Widget build(BuildContext context) {
    Scaffold temp = Scaffold(
      //
      // appbar
      appBar: AppBar(
        title: Text(Constants.QUOTES_SCREEN_TITLE),
      ),
      //
      // body
      // quote listview.builder
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: quoteList.length(),
        itemBuilder: (BuildContext context, int index) {
          // the actual entry, the same as in the listview example except
          // that it uses quoteList.getQuoteByIndex in order to get the
          // quote.
          return CustomRow(quote: quoteList.getQuoteByIndex(index));
        },
      ),
    );

    quoteList.resetIndex();
    return temp;
  }
}
