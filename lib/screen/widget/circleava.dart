import 'package:flutter/material.dart';

class Con extends StatelessWidget {
  final String img;
  final Color color1;
  final double num;

  Con({required this.img, required this.color1, required this.num,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: num,
      backgroundColor: color1,
      backgroundImage: AssetImage(img),
    );
  }
}
