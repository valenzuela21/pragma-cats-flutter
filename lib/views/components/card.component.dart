import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                  'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg',
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
                    strokeWidth: 20.5,),
                );
              }),
            ),
            Positioned(
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerRight,
                width: 150,
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
                      Navigator.pushNamed(context, '/details');
                    }),
              ),
            ),
            Positioned(
              left: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset('assets/images/cat-icon.png', width: 30),
                      Text("Abyssinian",
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
                  width: 150,
                  height: 40,
                  child: Row(
                    children: [
                      Image.asset('assets/images/map.png', width: 30),
                      SizedBox(width: 4),
                      Text("Egypt",
                          style: const TextStyle(color: Colors.white)),
                    ],
                  )),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerRight,
                  width: 150,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/braing.png', width: 30),
                      SizedBox(width: 4),
                      Text("5%", style: const TextStyle(color: Colors.white)),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
