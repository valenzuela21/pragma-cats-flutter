import 'package:catspragma/blocs/cats/cats_bloc.dart';
import 'package:catspragma/views/components/card.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../layout/search.layout.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listCats = context.watch<CatsBloc>().state.cats;
    final size =  MediaQuery.of(context).size;
    return SearchLayout(
      child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return CardComponent(cat: listCats[index]);
                },
                childCount: listCats.length,
              ),
            )
          ],
        ),
      
    );
  }
}
