import 'package:catspragma/blocs/blocs.dart';
import 'package:catspragma/views/ui/input.ui.dart';
import 'package:catspragma/views/ui/logo.ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ui/footer.ui.dart';

class SearchLayout extends StatelessWidget {
  final Widget child;


  const SearchLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Logo()
      ),
      body:Container(
        width: 550,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
                cursorColor: Colors.grey,
                autocorrect: false,
                style: const TextStyle(color: Colors.black45),
                keyboardType: TextInputType.text,
                decoration: InputUi.generalInputDecoration(
                    hinText: 'Example: Abyssinian',
                    labelText: "Search ...",
                    prefixIcon: Icons.search,
                    colorInput: Colors.grey),
                onChanged: (String? newSearchTerm){
                  if(newSearchTerm != null){
                    context.read<SearchCatBloc>().add(SetSearchTermEvent(newSearchTerm: newSearchTerm));
                  }
                },

            ),
            Expanded(child: child)
          ],
        ),
      )
    );
  }
}
