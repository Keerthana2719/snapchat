import 'package:flutter/material.dart';

class Con2 extends StatelessWidget {
  final IconData icon;
  final Color color1;

  const Con2({required this.icon,required this.color1,super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 20,
        backgroundColor: color1,
        child: Icon(icon, size: 25, color: Colors.grey),

    );
  }
}
