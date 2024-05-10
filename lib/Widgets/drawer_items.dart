import 'package:flutter/material.dart';
import 'package:mini_gemini/Screens/about_screen.dart';
import 'package:mini_gemini/Screens/developers_screen.dart';
import 'package:mini_gemini/Screens/home_screen.dart';
import 'package:mini_gemini/Screens/mentors_screen.dart';
import 'package:share_plus/share_plus.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems({super.key});
  final String shareAppLink = "This is the share link";

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 169, 229, 235),
          ),
          child: Column(
            children: [
              // IconButton(
              //   onPressed: () {
              //     Navigator.of(context).pop();
              //   },
              //   icon: const Icon(Icons.arrow_back_outlined),
              // ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/app_logo.jpg",
                  height: 77,
                  width: 77,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Welcome to ByteBot",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            ListTile(
              title: const Text(
                "Home",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              title: const Text(
                "Mentors",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 9, 195, 216),
                ),
              ),
              leading: const Icon(
                Icons.manage_accounts_outlined,
                color: Color.fromARGB(255, 9, 195, 216),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MentorsIdentityScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                "Developers",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              leading: const Icon(
                Icons.manage_accounts,
                color: Colors.purple,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DevelopersIdentityScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                "About me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 194, 133, 2),
                ),
              ),
              leading: const Icon(
                Icons.info,
                color: Color.fromARGB(255, 194, 133, 2),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutItemsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                "Share this app",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              leading: const Icon(
                Icons.share,
                color: Colors.green,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Share.share(widget.shareAppLink);
              },
            ),
          ],
        )
      ],
    );
  }
}
