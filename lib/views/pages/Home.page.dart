import 'package:catspragma/blocs/cats/cats_bloc.dart';
import 'package:catspragma/blocs/search_calculate_bloc/search_calculate_bloc.dart';
import 'package:catspragma/blocs/search_cat/search_cat_bloc.dart';
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
          ? Column(
              children: [
                Text("Search by: ${filterCats?.searchTerm}"),
                (filterCats.filterCats.isEmpty)
                    ? Expanded(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Not found..."),
                        ],
                      ))
                    : Expanded(child: _BoxSearchResult(filterCats: filterCats))
              ],
            )
          : CustomScrollView(
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
            ),
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
