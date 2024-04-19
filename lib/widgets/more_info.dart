import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  final String titleNAme;
  final String subTitle;
  final String iconPath;

  const MoreInfo(
      {super.key,
      required this.titleNAme,
      required this.subTitle,
      required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //icon
        Card(
          elevation: 5,
          child: Image.asset(iconPath, width: 100),
        ),

        //title + subTitle
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleNAme,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),

        //forward_arrow
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 30,
          color: Colors.black,
        ),
      ],
    );
  }
}
