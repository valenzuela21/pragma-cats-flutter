import 'package:catspragma/views/components/card.component.dart';
import 'package:flutter/material.dart';

import '../layout/search.layout.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return SearchLayout(
      child: SizedBox(
        height: size.height / 1.34,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return CardComponent();
                },
                childCount: 20,
              ),
            )
          ],
        ),
      )
    );
  }
}
