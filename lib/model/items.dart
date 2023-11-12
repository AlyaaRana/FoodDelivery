class Food {
  final String name;
  final String image;
  final double price;
  final double rating;
  final double kal;
  final String category;
  final bool isFavorite;
  final double preparationTime;
  final String description;

  Food({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.kal,
    required this.category,
    this.isFavorite = false,
    required this.preparationTime, // Initialize the new field
    required this.description, // Initialize the new field
  });
}

List<Food> food = [
  Food(
      name: "Capcay",
      image: "assets/image/capcay.png",
      price: 8.99,
      rating: 4.1,
      kal: 280,
      category: "Vegetable",
    preparationTime: 20.0,
    description: "Capcay is a delightful Chinese-Indonesian stir-fry featuring an array of colorful vegetables like cabbage, carrots, and mushrooms, all bathed in a savory sauce."
  ),
  Food(
      name: "chicken cheese",
      image: "assets/image/chickenchesse.png",
      price: 10.99,
      rating: 4.3,
      kal: 350,
      category: "Chicken",
    preparationTime: 10.0,
    description: "Chicken Cheese tantalizes the taste buds with succulent chicken grilled or baked to perfection, adorned with a layer of gooey melted cheese for a delightful combination of flavors."
  ),
  Food(
      name: "chicken",
      image: "assets/image/chickenori.png",
      price: 9.49,
      rating: 4.2,
      kal: 320,
      category: "Chicken",
    preparationTime: 20.0,
    description: "Chicken is a versatile and popular protein, enjoyed grilled, roasted, fried, or stewed, renowned for its tender and flavorful meat."
  ),
  // Food(
  //     name: "coffee",
  //     image: "assets/image/coffee.png",
  //     price: 3.99,
  //     rating: 4.4,
  //     kal: 150,
  //     category: "Drink",
  //     preparationTime: 20.0,
  // ),
  // Food(
  //     name: "deluxe smoked beef",
  //     image: "assets/image/delux_smoked_beef.png",
  //     price: 21.99,
  //     rating: 4.7,
  //     kal: 500,
  //     category: "Beef"
  //     preparationTime: 20.0,
  // ),
  // Food(
  //     name: "double cheese burger",
  //     image: "assets/image/double_cheese_burger.png",
  //     price: 8.49,
  //     rating: 4.6,
  //     kal: 600,
  //     category: "Burger & Pizza"
  //     preparationTime: 20.0,
  // ),
  Food(
      name: "hot choco",
      image: "assets/image/hot_choco.png",
      price: 4.99,
      rating: 4.0,
      kal: 250,
      category: "Drink",
    preparationTime: 5.0,
    description: "Hot Chocolate, or Hot Choco, is a comforting beverage crafted from melted chocolate, milk, and sometimes cream, providing a warm indulgence often topped with whipped cream or marshmallows."
  ),
  Food(
      name: "hot milk",
      image: "assets/image/hot_milk.png",
      price: 3.49,
      rating: 4.2,
      kal: 200,
      category: "Drink",
    preparationTime: 20.0,
    description: "Hot Milk, a simple and soothing beverage, involves heating milk to a warm or hot temperature, offering a comforting drink, sometimes sweetened for added delight."
  ),
  Food(
      name: "milk shake",
      image: "assets/image/milkshake.png",
      price: 6.99,
      rating: 4.5,
      kal: 320,
      category: "Beverage",
    preparationTime: 20.0,
    description: "A velvety indulgence, milkshakes transform humble milk into a delightful sip of sweetness and creaminess, offering pure joy in every flavor."
  ),
  // Food(
  //     name: "mushroom swiss",
  //     image: "assets/image/mushroomswiss.png",
  //     price: 14.99,
  //     rating: 4.3,
  //     kal: 400,
  //     category: "Burger & Pizza"
  // ),
  Food(
      name: "salad",
      image: "assets/image/salad.png",
      price: 7.49,
      rating: 4.6,
      kal: 200,
      category: "Salad",
    preparationTime: 20.0,
      description: "Salad, a vibrant dish, harmonizes an assortment of fresh raw or cooked vegetables and fruits, often dressed with vinaigrette or other delightful dressings."
  ),
  Food(
      name: "soda",
      image: "assets/image/soda.png",
      price: 2.49,
      rating: 4.0,
      kal: 100,
      category: "Drink",
    preparationTime: 20.0,
    description: "Soda, a fizzy and refreshing carbonated beverage, comes in various flavors like cola, lemon-lime, and orange, commonly served over ice for a delightful cool-down."
  ),
  Food(
      name: "soup",
      image: "assets/image/soup.png",
      price: 6.99,
      rating: 3.9,
      kal: 150,
      category: "Vegetable",
    preparationTime: 20.0,
    description: "A comforting blend of ingredients, from hearty stews to delicate broths, soup is a timeless expression of culinary craftsmanship."
  ),
  Food(
      name: "spicy cheese",
      image: "assets/image/spicychese.png",
      price: 6.99,
      rating: 4.7,
      kal: 400,
      category: "Chicken",
    preparationTime: 20.0,
    description: "Spicy Cheese captures the essence of rich and creamy cheese infused with a spicy kick, whether in a dip or incorporated into cheese-centric recipes."
  ),
  Food(
      name: "spicy chicken",
      image: "assets/image/spicychicken.png",
      price: 9.99,
      rating: 4.4,
      kal: 450,
      category: "Chicken",
    preparationTime: 20.0,
    description: "Spicy Chicken, known for its bold and fiery flavor, features chicken seasoned with chili peppers, hot sauce, or spices for a delightful culinary experience."
  ),
  Food(
      name: "steak",
      image: "assets/image/steak.png",
      price: 17.99,
      rating: 4.8,
      kal: 550,
      category: "Beef",
    preparationTime: 20.0,
    description: "Steak, a culinary delight, showcases perfectly grilled or seared cuts of beef, often accompanied by vegetables and potatoes, creating a savory and satisfying meal."
  ),

];