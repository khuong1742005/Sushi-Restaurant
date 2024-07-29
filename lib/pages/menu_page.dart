import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_res/models/food.dart';
import '../theme/color.dart';
import 'food_tile.dart';
import 'intro_page_button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu
  List foodMenu = [
    Food(
      name: "Food 1",
      price: "30.000 VND",
      imagePath: "lib/assets/sushi3.png",
      rating: "4.9",
    ),
    Food(
      name: "Food 2",
      price: "35.000 VND",
      imagePath: "lib/assets/sushi4.png",
      rating: "4.7",
    ),
    Food(
      name: "Food 3",
      price: "40.000 VND",
      imagePath: "lib/assets/sushi5.png",
      rating: "4.8",
    ),
    Food(
      name: "Food 4",
      price: "50.000 VND",
      imagePath: "lib/assets/sushi6.png",
      rating: "5.0",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // left
                Column(
                  children: [
                    // text
                    Text('Get 32% Promo',
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 20),
                    // redeem button
                    Button(text: "Redeem", onPressed: () {})
                  ],
                ),
                // icon
                Image.asset(
                  'lib/assets/sushi2.png',
                  height: 100,
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here...",
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          const SizedBox(height: 25),
          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 25),
          // food item
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),
          const SizedBox(height: 25),
          // popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //image
                Image.asset(
                  'lib/assets/sushi5.png',
                  height: 60,
                ),
                const SizedBox(width: 10),
                //name and price
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //name
                        Text(
                          'Food 1',
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        //price
                        const Text('50.000 VND'),
                      ],
                    ),
                    //heart
                    const Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                      size: 28,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
