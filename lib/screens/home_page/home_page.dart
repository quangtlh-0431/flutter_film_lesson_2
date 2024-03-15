import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic_lesson_2/models/film.dart';
import 'package:flutter_basic_lesson_2/screens/home_page/home_page_viewmodel.dart';
import 'package:flutter_basic_lesson_2/screens/home_page/widgets/item_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        title: const Text(
          "Popular",
          textAlign: TextAlign.center,
        ),
      ),
      body: const Column(
        children: [
          ListFilm()
        ],
      ),
    );
  }

}

class ListFilm extends ConsumerWidget{
  const ListFilm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listFilm = ref.watch(showProvider);
    return Flexible(
      child: SizedBox(
        height: double.maxFinite,
        child: listFilm.when(
            data: (show) {
              List<Film> listFilm = [];
              for(int i = 0; i<20;i++) {
                listFilm.add(
                    Film(
                        urlImg: show.image!.original.toString(),
                        description: show.summary.toString(),
                        title: show.name.toString()
                    )
                );
              }
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listFilm.length,
                  itemBuilder: (context, index){
                    return ItemView(
                        film: listFilm[index]
                    );
                  }
              );
            },
            error: (error, stackTrace) => Center(child: Text('Error: $error')),
            loading: () => const Center(child: CircularProgressIndicator())
        )
      ),
    );
  }
}

