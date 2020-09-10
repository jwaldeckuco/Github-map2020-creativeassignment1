import 'package:creativeassignment1/quote.dart';

class QuoteList {
  // This class is a list that contains all the quotes for this app. It has
  // a getter that works with an index, and a getter that simply gets the
  // next quote.
  // quotes are added to the quote list anonymously

  // NOTE: Some quotes may be incorrectly attributed or incorrect. More effort vetting quotes would be given
  // to a production app.

  var _quotes = [];
  static int _currentIndex;

  QuoteList() {
    _currentIndex = 0;

    //quote 0
    _quotes.add(Quote(
        authorName: 'Kyle Rector',
        quoteText:
            'I learned that computer science is not just about syntax and coding. ' +
                'We can make a difference in people\'s lives by developing ' +
                'applications...'));

    // quote 1
    _quotes.add(Quote(
        authorName: 'Steve Ballmer',
        quoteText:
            'Computer Science is the operating system for all innovations'));

    // quote 2
    _quotes.add(Quote(
        authorName: 'Steve Ballmer',
        quoteText:
            'DEVELOPERS DEVELOPERS DEVELOPERS DEVELOPERS DEVELOPERS DEVELOPERS'));

    // quote 3
    _quotes.add(Quote(
        authorName: 'Steve Jobs',
        quoteText:
            'Computer science... jobs should be way more interesting than even ' +
                'going to Wall Street or being a lawyer - or, I can argue, than ' +
                'anything but perhaps biology, and there it\'s just a tie'));

    // quote 4
    _quotes.add(Quote(
        authorName: 'Edsger Dijkstra',
        quoteText:
            'Computer science is no more about computers than astronomy is about telescopes.'));

    // quote 5
    _quotes.add(Quote(
        authorName: 'George Lucas',
        quoteText: 'When I found out I couldn\'t be a Computer Scientist... around ' +
            '1990... I got so disenchanted that I decided to ruin my greatest ' +
            'creation... and that\'s why all the extra CGI scenes were put into ' +
            'the original Star Wars Trilogy (he didn\'t really say that)'));

    // quote 6
    _quotes.add(Quote(
        authorName: 'W. Edwards Deming',
        quoteText:
            'Without data you\'re just another person with an opinion.'));

    // quote 6
    _quotes.add(Quote(
        authorName: 'Alan Turing',
        quoteText:
            'We can only see a short distance ahead. But we can see plenty ' +
                'there that needs to be done.'));
    // quote 7
    _quotes.add(Quote(
        authorName: 'Donald Knuth',
        quoteText:
            'I decry the current tendency to seek patents on algorithms. There ' +
                'are better ways to earn a living than to prevent other people from ' +
                'making use of one\'s contributions to computer science.'));

    // quote 8
    _quotes.add(Quote(
        authorName: 'Donald Knuth',
        quoteText:
            'In fact what I would like to see is thousands of computer scientists ' +
                'let loose to do whatever they want. That\'s what really advances the ' +
                'field.'));
  }

  Quote getQuoteByIndex(int index) {
    // returns the quote at the specified index
    return _quotes[index];
  }

  Quote getNext() {
    // if current index is 0, the first quote in quotes is returned
    // if current index is less than quotes.length, current index is incremented
    // and the quote at the new current index is returned.
    // otherwise, a quote with empty strings for quote text and author name is
    // returned
    if (_currentIndex == 0) {
      return _quotes[0];
    }
    if (_currentIndex < _quotes.length) {
      _currentIndex++;
      return _quotes[_currentIndex];
    } else {
      return Quote(authorName: '', quoteText: '');
    }
  }

  void resetIndex() {
    // sets the current index to 0
    _currentIndex = 0;
  }

  int length() {
    // returns the length of quotes, since quotes is private
    return _quotes.length;
  }
}
