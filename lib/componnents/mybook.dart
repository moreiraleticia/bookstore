import 'package:desafio_tecnico2/data/bookdata.dart';
import 'package:flutter/material.dart';

Widget myBook(BookData book) {
  return Container(
    width: 122.0,
    margin: const EdgeInsets.only(right: 12.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 121.65,
          height: 180.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(book.bookCover),
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 12.0,

        ),
        Text(book.titulo,style:const TextStyle(fontSize: 18.0),
        ),
      ],
    ),
  );
}
