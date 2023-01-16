import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/tile_widget.dart';

final String assetName = 'assets/images/bird.svg';
final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return tileWidget(index);
        }),
      ),
    );
  }
}
