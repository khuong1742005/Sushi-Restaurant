import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_res/pages/intro_page_button.dart';
import 'package:sushi_res/pages/menu_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 65, 57),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 25),
          // Shop name
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'SUSHI MAN',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 25),
          // Icon
          Padding(
            padding: const EdgeInsets.only(left: 130, right: 130),
            child:
                Image.asset('lib/assets/sushi1.png', width: 250, height: 250),
          ),
          const SizedBox(height: 25),
          // tilte
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'THE TASTE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Feel the taste of the most popular Japanese food from anywhere and any time",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),
          ),
          const SizedBox(height: 25),
          // get start button
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Button(
              text: "Get Started",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MenuPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
