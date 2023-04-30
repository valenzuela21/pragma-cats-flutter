import 'package:flutter/material.dart';
import '../layout/standar.layout.dart';

Widget Loading() {
  return StandarLayout(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 130,
              height: 130,
              child: CircularProgressIndicator(
                  backgroundColor: Colors.grey.shade300, strokeWidth: 5.5),
            ),
          ],
        ),
      ));
}