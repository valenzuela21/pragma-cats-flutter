import 'package:catspragma/blocs/cats/cats_bloc.dart';
import 'package:catspragma/blocs/search_calculate_bloc/search_calculate_bloc.dart';
import 'package:catspragma/enums/catsStatus.enum.dart';
import 'package:catspragma/views/components/card.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../layout/search.layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listCats = context.watch<CatsBloc>().state;
    final filterCats = context.watch<SearchCalculateBloc>().state;
    return SearchLayout(
      child: (filterCats.status == CatsStatus.complete)
          ? _SearchResult(filterCats: filterCats)
          : _InitialAllCats(listCats: listCats),
    );
  }
}

class _InitialAllCats extends StatelessWidget {
  const _InitialAllCats({
    super.key,
    required this.listCats,
  });

  final CatsState listCats;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CardComponent(cat: listCats.cats[index]);
              },
              childCount: listCats.cats.length,
            ),
          )
        ],
      );
  }
}

class _SearchResult extends StatelessWidget {
  const _SearchResult({
    super.key,
    required this.filterCats,
  });

  final SearchCalculateState filterCats;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("Search by: ${filterCats?.searchTerm}",
              style:
                  const TextStyle(color: Colors.black45, fontSize: 16)),
          (filterCats.filterCats.isEmpty)
              ? Expanded(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/no_found_search.png',
                      fit: BoxFit.fitHeight,
                      width: 180,
                    ),
                    const Text(
                      "Not found...",
                      style: const TextStyle(
                          color: Colors.black45, fontSize: 12),
                    ),
                  ],
                ))
              : Expanded(child: _BoxSearchResult(filterCats: filterCats))
        ],
      );
  }
}

class _BoxSearchResult extends StatelessWidget {
  const _BoxSearchResult({
    super.key,
    required this.filterCats,
  });

  final SearchCalculateState filterCats;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return CardComponent(cat: filterCats.filterCats[index]);
            },
            childCount: filterCats.filterCats.length,
          ),
        )
      ],
    );
  }
}
