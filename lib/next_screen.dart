// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screenone extends StatefulWidget {
  final String name;
  const Screenone({super.key, required this.name});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.name),
          Center(
            child: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Move Back")),
          )
        ],
      ),
    );
  }
}
