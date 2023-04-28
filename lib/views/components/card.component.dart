import 'package:flutter/material.dart';

import '../../models/cats.model.dart';

class CardComponent extends StatelessWidget {
  final Cats cat;
  CardComponent({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                  'https://cdn2.thecatapi.com/images/${cat.referenceImageId}.jpg',
                  fit: BoxFit.cover,
                  color: Colors.black38,
                  colorBlendMode: BlendMode.multiply,
                  loadingBuilder:
                      (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Transform.scale(
                  scale: 0.2,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey.shade300,
                    strokeWidth: 20.5),
                );
              },  errorBuilder: (context, error, stackTrace) {
               
                return Image.asset('assets/images/no_image_found.jpg',  fit: BoxFit.cover,  color: Colors.black38,
                  colorBlendMode: BlendMode.multiply,);
              }),
            ),
            Positioned(
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerRight,
                width: 100,
                height: 50,
                child: MaterialButton(
                    minWidth: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    disabledColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    elevation: 0,
                    color: Colors.transparent,
                    child: Image.asset('assets/images/book.png'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/details', arguments: cat);
                    }),
              ),
            ),
            Positioned(
              left: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerLeft,
                  width: 200,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset('assets/images/cat-icon.png', width: 30),
                      Text(cat.name,
                          style: const TextStyle(color: Colors.white)),
                    ],
                  )),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerLeft,
                  width: 200,
                  height: 40,
                  child: Row(
                    children: [
                      Image.asset('assets/images/map.png', width: 30),
                      const SizedBox(width: 4),
                      Text(cat.origin,
                          style: const TextStyle(color: Colors.white)),
                    ],
                  )),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerRight,
                  width: 100,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/braing.png', width: 30),
                      const SizedBox(width: 4),
                      Text("${cat.intelligence} %", style: const TextStyle(color: Colors.white)),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
