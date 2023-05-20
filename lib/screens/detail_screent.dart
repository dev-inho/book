import 'package:book/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Book book;
  /* 생성자 */
  const DetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: ListView(
        children: [
          Image.network(
              book.image,
              width: 300,
          ),
          Padding(padding: EdgeInsets.all(3)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        book.title,
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      book.subTitle,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Center(
                    child: Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(3)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  Text(
                    "contact",
                    style: TextStyle(color: Colors.blue) ,
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.near_me,
                    color: Colors.blue,
                  ),
                  Text(
                    "Route",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.save,
                    color: Colors.blue,
                  ),
                  Text(
                    "save",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(book.description),
          )
        ],
      ),
    );
  }
}