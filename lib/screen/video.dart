import 'package:flutter/material.dart';
import 'package:snap/screen/widget/circleava.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/r1.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Con(
                        img: "assets/sn1.png",
                        color1: Colors.transparent,
                        num: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white12,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Spotlight",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 15,
              right: 15,
              child: Column(
                children: [
                  Icon(Icons.favorite, color: Colors.white,size: 35,),
                  Text("40",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10),
                  Icon(Icons.bookmark_outlined, color: Colors.white,size: 35,),
                  Text("4",style: TextStyle(color: Colors.white),),

                  SizedBox(height: 10),
                  Icon(Icons.compare_arrows, color: Colors.white,size: 35,),
                  Text("10",style: TextStyle(color: Colors.white),),

                  SizedBox(height: 10),
                  Icon(Icons.screen_share, color: Colors.white,size: 35,),
                  Text("20",style: TextStyle(color: Colors.white),),

                  SizedBox(height: 10),
                  Icon(Icons.more_horiz, color: Colors.white,size: 35,),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
