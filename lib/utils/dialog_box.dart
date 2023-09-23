// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:fluttertodo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    Key? key,
    required this.onSave,
    required this.onCancel,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[400],
      content: Container(
        height: 120,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add Your Task"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    text: "save",
                    onPressed: onSave,
                  ),
                  MyButton(text: "Cancel", onPressed: onCancel)
                ],
              )
            ]),
      ),
    );
  }
}
