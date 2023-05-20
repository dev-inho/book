

import 'package:book/screens/detail_screent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String description;
  final String image;

  BookTile({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
      return ListTile(
        title: Text(title),
        leading: Image.network(image),
        onTap: () { /* 눌렀을 때의 이벤트 */
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DetailScreen(
              title: title,
              subTitle: subTitle,
              description: description,
              image: image,
            ))
          );
        },
      );
  }

}