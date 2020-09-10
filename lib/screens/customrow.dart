import 'package:flutter/material.dart';

import '../quote.dart';
import 'constants.dart';

class CustomRow extends StatelessWidget {
  // This class is responsible for displaying the Quote passed to it.
  final Quote quote;

  CustomRow({this.quote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        //
        // alignment
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        //
        // children
        children: [
          //
          // quote text row
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  //
                  // alignment
                  alignment: Alignment.center,
                  color: Constants.PRIMARY_COLOR_DARK,
                  //
                  // quote
                  child: Text(
                    quote.quoteText,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          //
          // author name row
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.amber[600],
                  alignment: Alignment.center,
                  //
                  // author
                  child: Text(quote.authorName),
                ),
              ),
            ],
          ),
          //
          // spacer
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
