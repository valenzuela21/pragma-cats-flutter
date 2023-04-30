import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../blocs/search_calculate_bloc/search_calculate_bloc.dart';


class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: (){
        context.read<SearchCalculateBloc>().add(InitialSearchFilterEvent());
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

