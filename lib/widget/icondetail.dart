import 'package:flutter/material.dart';

class IconDetail extends StatelessWidget {
  final String imagePath;
  final double value;

  const IconDetail({
    Key? key,
    required this.imagePath,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          width: 20.0,
          height: 20.0,
        ),
        SizedBox(width: 2.0), // Adjust the left margin
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 15.0),
      ],
    );
  }
}
