import 'package:flutter/material.dart';
import 'package:mini_gemini/Screens/home_screen.dart';
import 'package:mini_gemini/Widgets/Mentors_profile.dart';

class MentorsIdentityScreen extends StatelessWidget {
  const MentorsIdentityScreen({super.key});

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
          'Meet my Mentors',
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
              MentorProfile(
                name: 'Varun Bartwal',
                roll: 'Mentor',
                img: "assets/images/varun.jpg",
                about: "(Head of the Department)",
              ),
              MentorProfile(
                name: 'Mukesh Arya',
                roll: 'Mentor',
                img: "assets/images/mukesh.jpg",
                about: "(Assistant Teacher)",
              ),
              MentorProfile(
                name: 'Mr. Arvind',
                roll: 'Mentor',
                img: "assets/images/arvind.jpg",
                about: "(Lab Assistant)",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
