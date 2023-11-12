import 'package:flutter/material.dart';
import 'package:untitled/model/category.dart';
import '../widget/cattegory_button.dart';
import '../widget/header.dart';
import '../widget/listfood.dart';
import '../widget/promote.dart';
import '../widget/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;
  String selectedCategory = "All";

  void setCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderHome(),
                CustomSearchBar(),
                Promote(),
                // Text(
                //   "Category",
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
                // categoryMenu(),
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                ListFood()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget categoryMenu() {
    return Container(
      height: 80.0,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              setState(() => selectIndex = index);
            },
            child: CategoryButton(
              category: category,
              index: selectIndex,
            ),
          );
        },
      ),
    );
  }
}
