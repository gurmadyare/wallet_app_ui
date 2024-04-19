import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String btnName;
  const MyButton({super.key, required this.iconPath, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Card(
          margin: const EdgeInsets.only(top: 20),
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(iconPath, width: 70)),
        ),
        const SizedBox(height: 10),

        //name
        Text(
          btnName,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
