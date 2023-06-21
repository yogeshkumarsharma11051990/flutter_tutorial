import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String imageURL =
      "https://www.pakainfo.com/wp-content/uploads/2021/09/sample-image-url-for-testing-300x169.jpg";

  //const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Yogesh Kumar Sharma"),
                accountEmail: Text("abc@gmai.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              ),
            ),
            ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.white),
                title: Text("Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.white))),
            ListTile(
                leading:
                    Icon(CupertinoIcons.profile_circled, color: Colors.white),
                title: Text("Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.white))),
            ListTile(
                leading: Icon(CupertinoIcons.mail, color: Colors.white),
                title: Text("Email me",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
