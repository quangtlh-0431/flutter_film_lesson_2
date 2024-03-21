import 'package:flutter/material.dart';
import 'package:flutter_basic_lesson_2/data/models/film.dart';
import 'package:flutter_basic_lesson_2/UI/screens/home_page/home_page_viewmodel.dart';
import 'package:flutter_basic_lesson_2/UI/screens/home_page/widgets/item_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        children: [ListFilm()],
      ),
    );
  }
}

class ListFilm extends ConsumerWidget {
  const ListFilm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.read(homeViewModelProvider);
    final loading =
        ref.watch(homeViewModelProvider.select((value) => value.loading));
    List<Film> listFilm =
        ref.watch(homeViewModelProvider.select((value) => value.listFilm));
    homeViewModel.fetchShow("2");
    return Flexible(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
            height: double.maxFinite,
            child: Builder(builder: (context) {
              return !loading!
                  ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: listFilm.length,
                      itemBuilder: (context, index) {
                        return ItemView(film: listFilm[index]);
                      })
                  : const Center(child: CircularProgressIndicator());
            })));
  }
}
