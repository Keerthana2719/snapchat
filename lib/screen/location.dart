import 'package:flutter/material.dart';
import 'package:snap/screen/widget/circleava.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/loc.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Con(img: "assets/sn1.png", color1: Colors.white, num: 20),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Snap Map",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.settings_sharp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Image.asset("assets/map.png"),
                  SizedBox(height: 20,),
                  Container(
                    height: 75,
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.black12,
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                          SizedBox(width: 15,),

                          Con(img: "assets/sn1.png", color1: Colors.black12, num: 26),
                          SizedBox(width: 15,),

                          Con(img: "assets/res.png", color1: Colors.blueAccent, num: 18),
                          SizedBox(width: 9,),

                          Text(
                            "Places",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 15,),

                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 27,
                            ),
                          ),
                          SizedBox(width: 9,),

                          Text(
                            "Popular with Friends",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
