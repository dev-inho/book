import 'package:book/screens/detail_screent.dart';
import 'package:book/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(BookApp());

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '도서 추천 앱',
      home: ListScreen(),
    );
  }

}