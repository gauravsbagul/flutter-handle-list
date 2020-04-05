import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'Quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'one', text: 'Quote one'),
    Quote(author: 'two', text: 'Quote two'),
    Quote(author: 'three', text: 'Quote three'),
  ];




  List<String> authors = [''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ));
  }
}
