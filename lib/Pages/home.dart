import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:practice_ui/Pages/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Discover",
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                ),
                const Gap(40),
                /*
              FEATURES TO BE ADDED
                */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Reccommened",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff515979),
                            //color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                    Text("See All",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff4A80F0),
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
          const Gap(10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                card(),
                card(),
              ],
            ),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: const [
                Text("Recent",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //color: Colors.grey,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
