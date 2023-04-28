import 'package:catspragma/views/layout/standar.layout.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return StandarLayout(
      child: Column(
        children: [_HeaderDetail(size: size), _ContentDescription(size: size)],
      ),
    );
  }
}

class _HeaderDetail extends StatelessWidget {
  const _HeaderDetail({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: size.height / 4.6,
          child: Image.network(
              'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg',
              fit: BoxFit.cover,
              color: Colors.black38,
              alignment: Alignment.center,
              colorBlendMode: BlendMode.multiply, loadingBuilder:
                  (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Transform.scale(
              scaleX: 0.15,
              scaleY: 0.35,
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey.shade300,
                strokeWidth: 20.5,
              ),
            );
          }),
        ),
        Column(
          children: [
            Text("Abyssinian",
                style: TextStyle(color: Colors.white, fontSize: 24)),
            Text("9 - 12 años",
                style: TextStyle(color: Colors.white, fontSize: 14))
          ],
        )
      ],
    );
  }
}

class _ContentDescription extends StatelessWidget {
  const _ContentDescription({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: size.height / 1.5,
      child: ListView(
        children: [
          Text("Description: ", style: TextStyle(fontSize: 22)),
          SizedBox(height: 10),
          Text(
              "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals."),
          SizedBox(height: 20),
          Text('Temperament: ', style: TextStyle(fontSize: 22)),
          SizedBox(height: 10),
          Text('Active, Energetic, Independent, Intelligent, Gentle'),
          SizedBox(height: 20),
          Text('Origin: ', style: TextStyle(fontSize: 22)),
          SizedBox(height: 10),
          Text('Egypt'),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
