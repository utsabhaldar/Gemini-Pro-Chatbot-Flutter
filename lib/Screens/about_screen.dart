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
      body: Container(
        color: const Color.fromARGB(255, 242, 105, 105),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/about_images/1.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/2.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/3.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/4.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/5.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/6.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/7.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/8.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/9.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/10.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/11.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/12.jpg"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/about_images/13.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
