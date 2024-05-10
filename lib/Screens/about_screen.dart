import 'package:flutter/material.dart';
import 'package:mini_gemini/Screens/home_screen.dart';

class AboutItemsScreen extends StatelessWidget {
  const AboutItemsScreen({super.key});

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
          'About me',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 45, 34, 30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/about_images/1.jpg"),
              Image.asset("assets/about_images/2.jpg"),
              Image.asset("assets/about_images/3.jpg"),
              Image.asset("assets/about_images/4.jpg"),
              Image.asset("assets/about_images/5.jpg"),
              Image.asset("assets/about_images/6.jpg"),
              Image.asset("assets/about_images/7.jpg"),
              Image.asset("assets/about_images/8.jpg"),
              Image.asset("assets/about_images/9.jpg"),
              Image.asset("assets/about_images/10.jpg"),
              Image.asset("assets/about_images/11.jpg"),
              Image.asset("assets/about_images/12.jpg"),
              Image.asset("assets/about_images/13.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
