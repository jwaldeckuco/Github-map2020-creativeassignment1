import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:creativeassignment1/screens/constants.dart';
import 'customrow.dart';
import '../main.dart';

class QuotesSeparatedScreen extends StatelessWidget {
  // This screen is a demo screen for the ListView.separated named constructor
  // It uses the same CustomRow as the ListView.builder screen, and the same
  // builder. The only real difference is the separatorBuilder
  static const routeName = '/quotesSeparatedScreen';

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
      // quote listview.separated
      body: ListView.separated(
        padding: EdgeInsets.all(8.0),
        itemCount: quoteList.length(),
        //scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          // the actual entry, the same as in the listview example except
          // that it uses quoteList.getQuoteByIndex in order to get the
          // quote.
          return CustomRow(quote: quoteList.getQuoteByIndex(index));
        },
        //
        // separator builder
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
          // apparently you can't use the color index to
          //change the saturation, eg Colors.amber[900]
          height: 10.0,
          thickness: 15,
          indent: 10.0,
          endIndent: 20.0,
        ),
      ),
    );

    quoteList.resetIndex();
    // resets the quoteList position to avoid a null reference when navigating
    // between screens that use it
    return temp;
  }
}
