import 'package:flutter/material.dart';
import 'package:untitled/core/color.dart';
import 'package:untitled/widget/icondetail.dart';
import 'package:untitled/widget/ingredient.dart';
import '../model/items.dart';

class DetailPage extends StatelessWidget {
  final Food foodItem;

  // Konstruktor untuk menerima data makanan
  DetailPage({required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Pop the current page to go back
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Text(foodItem.name, style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                    ),),
                    Text(
                      foodItem.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.5), // 50% opacity
                      ),
                    ),
                    Image.asset(foodItem.image,width: 234,height: 144,)
                  ],
                )
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: '\$', // "$" symbol
                          style: TextStyle(
                            fontSize: 15.0, // Adjust the size of the "$" symbol
                          ),
                        ),
                        TextSpan(
                          text: foodItem.price.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 24.0, // Adjust the size of the number
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 36,
                    decoration: BoxDecoration(
                      color: mainColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Handle button "+" press
                          },
                          icon: Icon(
                            Icons.add,
                            size: 25.0,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(width: 2.0), // Add some spacing between buttons
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 2.0), // Add some spacing between buttons
                        IconButton(
                          onPressed: () {
                            // Handle button "-" press
                          },
                          icon: Icon(
                            Icons.remove,
                            size: 25.0,
                              color: Colors.black// Adjust the size of the "-" icon
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  IconDetail(
                    imagePath: 'assets/detail/star.png',
                    value: foodItem.rating,
                  ),
                  IconDetail(
                    imagePath: 'assets/detail/calories.png',
                    value: foodItem.kal,
                  ),
                  IconDetail(
                    imagePath: 'assets/detail/time.png',
                    value: foodItem.preparationTime,
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Text("Ingredient", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Ingredient(
                    imagePath: 'assets/detail/beef.png', // Replace with the actual image path
                    width: 50, // Replace with your desired width
                  ),
                  Ingredient(
                    imagePath: 'assets/detail/garlic.png', // Replace with the actual image path
                    width: 50, // Replace with your desired width
                  ),
                  Ingredient(
                    imagePath: 'assets/detail/daun.png', // Replace with the actual image path
                    width: 50, // Replace with your desired width
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Text("Detail", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
              SizedBox(height: 10,),
              Expanded(child: Text(foodItem.description,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400
                ),))
            ],
          ),
        ),
      ),
    );
  }
}
