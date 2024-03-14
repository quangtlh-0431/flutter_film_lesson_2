import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic_lesson_2/models/film.dart';
import 'package:flutter_basic_lesson_2/screens/home_page/widgets/item_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Popular",
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: SizedBox(
              height: double.maxFinite,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const <Widget>[
                  ItemView(
                    film: Film(
                        urlImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL6vghSKHSGpZ9f9qPsyAKACKieZZaVNNES99ErxYAJVwYoD9_EroFXcQc5CD7gqjDRCU&usqp=CAU",
                        description: "adfshadsjkfhdasjkfhdjkafhdjkasfhadjksfhadjksfhad",
                        title: "Escape From Fretoria",
                        rate: 6.5
                    ),
                  ),
                  ItemView(
                    film: Film(
                        urlImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL6vghSKHSGpZ9f9qPsyAKACKieZZaVNNES99ErxYAJVwYoD9_EroFXcQc5CD7gqjDRCU&usqp=CAU",
                        description: "adfshadsjkfhdasjkfhdjkafhdjkasfhadjksfhadjksfhad",
                        title: "Escape From Fretoria",
                        rate: 6.5
                    ),
                  ),
                  ItemView(
                    film: Film(
                        urlImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL6vghSKHSGpZ9f9qPsyAKACKieZZaVNNES99ErxYAJVwYoD9_EroFXcQc5CD7gqjDRCU&usqp=CAU",
                        description: "adfshadsjkfhdasjkfhdjkafhdjkasfhadjksfhadjksfhad",
                        title: "Escape From Fretoria",
                        rate: 6.5
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
