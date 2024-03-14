import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_lesson_2/models/film.dart';
import 'package:flutter_basic_lesson_2/screens/home_page/widgets/item_detail.dart';

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
              builder: (context) => ItemDetail(film: film)));
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
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        film.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54
                      ),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                        film.description,
                      maxLines: 4,
                      style: TextStyle(
                      ),
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
