import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      width: 250,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(9)),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSxo7Naxu0tjuSEZ9_faYL--aWjx8V5TKr4q2YeenYKXXik-T5P")),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(3, 3),
                spreadRadius: 3.0,
                blurRadius: 5.0)
          ]),
    );
  }
}
