import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_res/pages/intro_page_button.dart';
import 'package:sushi_res/theme/color.dart';

import '../models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  // Quantity count
  int quantityCount = 0;
  // decrement
  void decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

  // increment
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  // add to cart button
  void addToCart() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // list view of food details
          Expanded(
            child: ListView(
              children: [
                // image
                Image.asset(widget.food.imagePath, height: 200),
                const SizedBox(height: 25),
                // rating + name + description
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // rating
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          const SizedBox(width: 5),
                          Text(
                            widget.food.rating,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // name
                      Text(
                        widget.food.name,
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(height: 15),
                      // descriptions
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Nice and fresh',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                          height: 2,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                // price and quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // price
                    Text(
                      widget.food.price,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    // quantity
                    Row(
                      children: [
                        // minus button
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: secondColor,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: decrementQuantity,
                          ),
                        ),
                        // quantity count
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantityCount.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        // plus button
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: secondColor,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: incrementQuantity,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 25),
                // add to cart button
                Button(text: "Add to cart", onPressed: addToCart),
              ],
            ),
          )
        ],
      ),
    );
  }
}
