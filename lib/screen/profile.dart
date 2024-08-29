import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<String> img = [
    "assets/sn2.png",
    "assets/sn3.png",
    "assets/sn4.png",
    "assets/sn5.png",
  ];

  final List<String> name = [
    "iᴎɘꞁ",
    "𝓭𝓪𝓷𝓲𝓮𝓵",
    "d҉e҉s҉h҉a҉",
    "🍒🎀𝒜𝓀𝓈𝒽𝒶𝓃𝒶🎀🍒",
  ];

  final List<String> img1 = [
    "assets/v1.png",
    "assets/v2.png",
    "assets/v3.png",
    "assets/v4.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Horizontal scrollable list of profile images and names
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: img.asMap().entries.map((entry) {
                    int index = entry.key;
                    String image = entry.value;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40, // Adjust the size as needed
                            backgroundImage: AssetImage(image),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            name[index],
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 25),

              // Title text
              const Text(
                "Discover",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20),

              // GridView for other images
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 0.7
                  ),
                  itemCount: img1.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(img1[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
