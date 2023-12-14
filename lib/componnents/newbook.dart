import 'package:desafio_tecnico2/data/bookdata.dart';
import 'package:flutter/material.dart';

Widget newBook(BookData book) {
  return SizedBox(
    width: double.infinity,
    height: 150.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          height: 128.0,
          width: 83.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(book.bookCover),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.titulo,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                book.autor,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.arrow_downward),
                  SizedBox(
                    width: 20.0,
                    height: 10.0,
                  ),
                  Icon(Icons.star),
                ],
              ),
            ],
          ),
        ),
        const Icon(Icons.bookmark_border),
      ],
    ),
  );
}
