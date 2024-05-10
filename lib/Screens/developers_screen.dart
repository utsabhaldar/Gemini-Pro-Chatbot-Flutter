import 'package:flutter/material.dart';
import 'package:mini_gemini/Screens/home_screen.dart';
import 'package:mini_gemini/Widgets/developers_profile.dart';

class DevelopersIdentityScreen extends StatelessWidget {
  const DevelopersIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 169, 229, 235),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
        title: const Text(
          'Meet my Developers',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 45, 34, 30),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DeveloperProfile(
                name: 'Sakshi',
                roll: 'Database Engineer',
                img: "assets/images/sakshi.jpg",
                about: "(B.Tech-IT-6th Sem-21134503008)",
              ),
              DeveloperProfile(
                name: 'Abhishek Kumar',
                roll: 'Backend Developer',
                img: "assets/images/abhishek.jpg",
                about: "(B.Tech-IT-6th Sem-21134503011)",
              ),
              DeveloperProfile(
                name: 'Jahanavi Singh',
                roll: 'Frontend Developer',
                img: "assets/images/jahanavi.jpg",
                about: "(B.Tech-IT-6th Sem-21134503003)",
              ),
              DeveloperProfile(
                name: 'Utsab Haldar',
                roll: 'Full Stack Developer',
                img: "assets/images/utsab.png",
                about: "(B.Tech-IT-6th Sem-21134503029)",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
