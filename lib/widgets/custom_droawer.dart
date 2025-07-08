import 'dart:io';

import 'package:flutter/material.dart';
import 'package:news_app/views/article_web_view.dart';
import 'package:news_app/views/settings_view.dart';
import 'package:news_app/widgets/custom_widget.dart';

class CustomDroawer extends StatelessWidget {
  const CustomDroawer({super.key});

  //myListTile => function
  ListTile myListTile({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
    Color? backGroundColor,
    // ignore: non_constant_identifier_names
    Color IconColor = const Color(0xff79359F),
    Color? textColor,
  }) {
    return ListTile(
      leading: CustomWidget(icon: icon),
      title: Text(text, style: TextStyle(color: textColor, fontSize: 18)),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff79359F), Color(0xffD76EF5)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/News_icon.jpg'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'News App',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Everything is new',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          myListTile(
            icon: Icons.home,
            text: "Home",
            onTap: () {
              Navigator.pop(context);
            },
            backGroundColor: Colors.grey.shade200,
          ),
          myListTile(
            icon: Icons.settings,
            text: "Setting",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsView();
                  },
                ),
              );
            },
            backGroundColor: Colors.grey.shade200,
          ),
          myListTile(
            icon: Icons.info,
            text: "About Me",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ArticleWebView(
                      name: "About Me",
                      url: "https://github.com/HamzaAlwajeeh",
                    );
                  },
                ),
              );
            },
            backGroundColor: Colors.grey.shade200,
          ),
          const Divider(thickness: 1),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: myListTile(
              icon: Icons.logout,
              text: "Logout",
              backGroundColor: Colors.red.shade50,
              textColor: Colors.red,
              IconColor: Colors.red,
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (context) => AlertDialog(
                        title: const Text("Exit Confirm"),
                        content: const Text(
                          "Are you sure you want to exit the app?",
                        ),
                        actions: [
                          TextButton(
                            child: const Text("No"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text("Yes"),
                            onPressed: () {
                              exit(0);
                            },
                          ),
                        ],
                      ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
