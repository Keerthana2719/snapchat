import 'package:flutter/material.dart';
import 'package:snap/screen/widget/circleava.dart';
import 'package:snap/screen/widget/con2.dart'; // Assuming Con is imported from here

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/image.png",
              width: double.maxFinite,
              height: double.maxFinite,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Con(
                          img: "assets/sna1.png",
                          color1: Colors.white12,
                          num: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Con2(icon: Icons.search, color1: Colors.white70),
                        SizedBox(
                          width: 180,
                        ),
                        Con2(
                            icon: Icons.person_add_sharp,
                            color1: Colors.white70),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ]
              ),
            ),
            Positioned(
                bottom: 40,
                left: 120,
                child: Row(
                  children: [
                    Image.asset("assets/Photo.png"),
                    SizedBox(width: 20,),
                    Image.asset("assets/round.png"),
                    SizedBox(width: 20,),
                    Image.asset("assets/smile.png"),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
