import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic_lesson_2/models/film.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ItemDetail extends StatelessWidget {
  final Film film;
  const ItemDetail({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Film Detail"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClipPath2(),
                  child: Opacity(
                    opacity: 0.8,
                    child: Container(
                      height: 300,
                      width: 1000,
                      child: Image(
                        image: NetworkImage(film.urlImg),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 300,
                    width: 1000,
                    child: Image(
                      image: NetworkImage(film.urlImg),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Image(
                    alignment: Alignment.bottomLeft,
                    image: NetworkImage(film.urlImg),
                    height: 300,
                    width: 100,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      film.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: 40,
                    lineWidth: 5,
                    center: Text(film.rate.toString()),
                    percent: film.rate!/10,
                    progressColor: Colors.black,
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black54)
                )
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Icon(Icons.reviews, color: Colors.greenAccent, size: 30,),
                    Text("Reviews")
                  ],
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Icon(Icons.play_circle, color: Colors.orangeAccent, size: 30,),
                    Text("Trailers")
                  ],
                ),
                Expanded(child: SizedBox()),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black54)
                  )
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text("Genre"),
                    Text("Reviews")
                  ],
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text("Release"),
                    Text("Trailers")
                  ],
                ),
                Expanded(child: SizedBox()),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black54)
                  )
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                film.description,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
// 0,0
    path.lineTo(0, h/2);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


class CustomClipPath2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(40, 40);
    path.lineTo(40, h/2);
    path.lineTo(w, h);
    path.lineTo(w, 40);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}