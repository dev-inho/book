import 'package:book/models/book.dart';
import 'package:book/models/book_tile.dart';
import 'package:book/repositories/book_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<Book> books = BookRepository().getBooks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("도서 목록 앱"),
      ),
      body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return BookTile(book: books[index]);
          }
      )
    );
  }
}