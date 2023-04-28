import 'package:catspragma/models/cats.model.dart';
import 'package:catspragma/views/layout/standar.layout.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cat = ModalRoute.of(context)?.settings.arguments as Cats;
    return StandarLayout(
      child: Column(
        children: [_HeaderDetail(size: size, data: cat), _ContentDescription(size: size, data: cat)],
      ),
    );
  }
}

class _HeaderDetail extends StatelessWidget {
  final Size size;
  final Cats? data;

  const _HeaderDetail({
    super.key,
    required this.size,
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: size.height / 4.6,
          child: Image.network(
              'https://cdn2.thecatapi.com/images/${data?.referenceImageId}.jpg',
              fit: BoxFit.cover,
              color: Colors.black38,
              alignment: Alignment.center,
              colorBlendMode: BlendMode.multiply
          ),
        ),
        Column(
          children: [
            Text("${data?.name}",
                style: TextStyle(color: Colors.white, fontSize: 24)),
            Text("${data?.weight.imperial} años",
                style: TextStyle(color: Colors.white, fontSize: 14))
          ],
        )
      ],
    );
  }
}

class _ContentDescription extends StatelessWidget {
  final Size size;
  final Cats? data;

  const _ContentDescription({
    super.key,
    required this.size,
    required this.data
  });


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
