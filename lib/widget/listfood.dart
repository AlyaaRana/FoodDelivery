import 'package:flutter/material.dart';

import '../model/items.dart';
import '../page/detailpage.dart';
import 'favorite_button.dart';

class ListFood extends StatelessWidget {

  const ListFood({super.key, });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 180, // Reduced from 220 to 180
      ),
      itemCount: food.length, // Use the food list's length here
      itemBuilder: (_, index) {
        final foodItem = food[index];
        return GestureDetector(
          onTap: () {
            // Navigasi ke halaman detail saat card ditekan
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(foodItem: foodItem),
              ),
            );
          },

          child: Stack(
            children: [
              Container(
                width: 155.0,
                height: 162.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFFEECC),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          foodItem.name,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 58,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "\$${foodItem.price.toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  foodItem.image, // Use the image property of the food item
                  width: 75,
                  height: 100,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
