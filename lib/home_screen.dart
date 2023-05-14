// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_getx/next_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final snackBar = SnackBar(
    content: Text('Yay! A SnackBar!'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Working"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: Get.height * .1),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: Text("English"))
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('ur', 'PK'));
                  },
                  child: Text("Urdu"))
            ],
          ),
          TextButton(
              onPressed: () {
                Get.to(Screenone(
                  name: "Screen 2",
                ));
              },
              child: Text("Go to Next Screen")),
          Card(
              child: ListTile(
            title: Text("Getx Dialog Alert"),
            subtitle: Text("Alert with GetX"),
            onTap: () {
              Get.defaultDialog(
                  textConfirm: "Ok",
                  title: "Are you Sure",
                  middleText: "Press Hello to pro ceed",
                  contentPadding: EdgeInsets.all(20),
                  textCancel: "Cancel");
            },
          )),
          Card(
              child: ListTile(
            title: Text("Getx Bottom Sheet"),
            subtitle: Text("Bottom Sheet with GetX"),
            onTap: () {
              Get.bottomSheet(Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.blue),
                child: Column(children: [
                  ListTile(
                    onTap: () {
                      Get.changeTheme(ThemeData.light());
                    },
                    leading: Icon(Icons.light_mode),
                    title: Text('Light Mode'),
                  ),
                  ListTile(
                    onTap: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                    leading: Icon(Icons.dark_mode),
                    title: Text('Dark Mode'),
                  )
                ]),
              ));
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //     content: Text(
        //         'Location services are disabled. Please enable the services')));
        Get.snackbar("Message", "Info Shared",
            snackPosition: SnackPosition.TOP);
      }),
    );
  }
}
