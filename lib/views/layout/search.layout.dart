import 'package:catspragma/views/ui/input.ui.dart';
import 'package:catspragma/views/ui/logo.ui.dart';
import 'package:flutter/material.dart';

import '../ui/footer.ui.dart';

class SearchLayout extends StatelessWidget {
  final Widget child;


  const SearchLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Logo.networkSvg()
      ),
      body:Container(
        width: 550,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
                cursorColor: Colors.white,
                autocorrect: false,
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                decoration: InputUi.generalInputDecoration(
                    hinText: 'Ejemplo: Abyssinian',
                    labelText: "Buscar...",
                    prefixIcon: Icons.search,
                    colorInput: Colors.grey),
                validator: (String? value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Ingrese el termino de la busqueda";
                  }
                }),
            Expanded(child: child),
            Footer()
          ],
        ),
      )
    );
  }
}
