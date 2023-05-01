import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilis/layout.dart';

class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: 250,
      height: 145,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // showing 1st card
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                   bottomLeft: Radius.circular(22),
                   bottomRight: Radius.circular(22)
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/images/background1.png"),
                  )
                  ),
              padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: const [
                      SizedBox(width: 10,),
                      Center(
                        child: Text(
                          "Sleep Meditation",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(width: 10,),
                      SizedBox(height: 30,),
                      SizedBox(
                        width: 120,
                        child: Text(
                          "7 Day Audio Series",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: const [
                      SizedBox(height: 40,),
                      SizedBox(
                        width: 60,
                        child: 
                        Icon(Icons.headphones,
                        color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.change_circle,
                      color: Colors.white,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
