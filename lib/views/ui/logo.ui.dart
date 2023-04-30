
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Logo {
  static Widget networkSvg (context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/');
      },
      child: SvgPicture.network(
        'https://www.pragma.com.co/hubfs/pragma_theme2021/images/Header%20Logo.svg',
        semanticsLabel: 'SVG From Network',
        width: 100, //placeholder while downloading file.
      ),
    );
  }
}
