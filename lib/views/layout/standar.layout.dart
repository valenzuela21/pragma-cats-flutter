import 'package:flutter/material.dart';

import '../ui/logo.ui.dart';
class StandarLayout extends StatelessWidget {
  final Widget child;

  const StandarLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Logo.networkSvg()
      ),
      body: Column(
        children: [
          Expanded(child: child),
          const Text("Development: David Valenzuela Pardo", style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}
