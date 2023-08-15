import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function() delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.fromLTRB(6.0, 6.0, 6.0, 5.0),
          child: Align(
            alignment: Alignment.center, // Center the content vertically
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  quote.author,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 8.0),
                ElevatedButton( // Replace RaisedButton with ElevatedButton
                  onPressed: delete,
                  child: Row(
                    children: [
                      Icon(Icons.delete),
                      Text('Delete Quote'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
