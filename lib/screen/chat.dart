import 'package:flutter/material.dart';
import 'package:snap/screen/widget/circleava.dart';
import 'package:snap/screen/widget/con2.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<String> img = [
    "assets/sn2.png",
    "assets/sn3.png",
    "assets/sn4.png",
    "assets/sn5.png",
    "assets/sn1.png",
    "assets/sn3.png",
    "assets/sn2.png"
  ];

  final List<String> names = [
    "Akshath",
    "Daniel",
    "Desha",
    "Akshana",
    "Jerry",
    "Jeni",
    "Abi"
  ];

  final List<String> subtitles = [
    "Delivered . just now",
    "Joined From Contacts",
    "Opened . 4mo",
    "Joined From Contacts",
    "Double tap to Snap",
    "Joined From Contacts",
    "Joined From Contacts"
  ];

  final List<Color> subtitleColors = [
    Colors.grey,
    Colors.blue,
    Colors.grey,
    Colors.blue,
    Colors.grey,
    Colors.blue,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Con(img: "assets/sn1.png", color1: Colors.grey, num: 20),
                    const SizedBox(width: 10),
                    const Con2(icon: Icons.search, color1: Colors.white70,),
                    const Spacer(),
                    const Text(
                      "Chat",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    const Con2(icon: Icons.person_add_sharp, color1: Colors.white70,),
                    const SizedBox(width: 10),
                    const Con2(icon: Icons.more_horiz, color1: Colors.white70,),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.blue.shade100,
                      child: const Text(
                        "All",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Text(
                      "Unread",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
                    ),
                    const Text(
                      "Unreplied",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
                    ),
                    const Text(
                      "Best Friends",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
                    ),
                    const Text(
                      "New",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: img.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Con(img: img[index], color1: Colors.white, num: 25),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      names[index],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      subtitles[index],
                                      style: TextStyle(
                                        color: subtitleColors[index],
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                "assets/cross.png",
                                width: 15,
                                height: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const Divider(),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
              Positioned(
                bottom: 20,
                right: 15,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: const Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                  ),
                ),
              ),
         ] ),
        ),
      ),
    );
  }
}
