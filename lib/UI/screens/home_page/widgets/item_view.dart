import 'package:flutter/material.dart';
import 'package:flutter_basic_lesson_2/data/models/film.dart';
import 'package:flutter_basic_lesson_2/UI/screens/detail_page/detail_page.dart';

class ItemView extends StatelessWidget {
  final Film film;
  const ItemView({
    super.key,
    required this.film
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(film: film)));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              alignment: Alignment.topCenter,
              image: NetworkImage(film.urlImg),
              height: 140,
              width: 100,
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        film.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54
                      ),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                        film.description,
                      maxLines: 4,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
