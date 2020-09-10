class Quote {
  // This class is a data structure representing a quote, with text and author name.
  String _quoteText;
  String _authorName;

  Quote({String quoteText, String authorName}) {
    _quoteText = quoteText;
    _authorName = authorName;
  }

  String get quoteText => _quoteText;

  String get authorName => _authorName;
}
