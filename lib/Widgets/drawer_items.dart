import 'package:flutter/material.dart';
import 'package:flutter_native_api/flutter_native_api.dart';
import 'package:mini_gemini/Screens/home_screen.dart';
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
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/logo.jpg",
                  height: 77,
                  width: 77,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Welcome to Gemini Pro",
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
              leading: const Icon(Icons.home),
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
                "Developers",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              leading: const Icon(Icons.manage_accounts),
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
                "Share this app",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              leading: const Icon(Icons.share),
              onTap: () {
                Navigator.of(context).pop();
                // Share.share(widget.shareAppLink);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const HomeScreen()));
                FlutterNativeApi.shareText(widget.shareAppLink);
              },
            ),
          ],
        )
      ],
    );
  }
}
