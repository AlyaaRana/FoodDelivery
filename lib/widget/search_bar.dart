

import 'package:flutter/material.dart';


class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
      child: Container( // Wrap the TextField with a Container
        width: double.infinity, // Constrain the width to be as wide as the parent
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(
                width: 0,
                color: Colors.black,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            fillColor: Color(0xFFFEFDFD),
            suffixIcon: Icon(Icons.sort, color: Colors.black),
            hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 18),
            hintText: "What would you like to buy?",
          ),
        ),
      ),
    );
  }
}



