

import 'package:book/models/book.dart';
import 'package:book/screens/detail_screent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final Book book;

  BookTile({
    required this.book
  });

  @override
  Widget build(BuildContext context) {
      return ListTile(
        title: Text(book.title),
        leading: Image.network(book.image),
        onTap: () { /* 눌렀을 때의 이벤트 */
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => DetailScreen(book: book)
            )
          );
        },
      );
  }

}