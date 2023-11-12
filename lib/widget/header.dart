import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu, size: 30.0),
        SizedBox(width: 16,),
        Text("NeaaOreaa",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),),
        SizedBox(width: 16,),
        Icon(Icons.shopping_cart, size: 30,)
      ],
    );
  }
}
