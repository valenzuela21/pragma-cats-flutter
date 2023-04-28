import 'package:catspragma/views/components/card.component.dart';
import 'package:flutter/material.dart';

import '../layout/search.layout.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchLayout(
      child: CardComponent(),
    );
  }
}
