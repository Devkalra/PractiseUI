import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilis/layout.dart';

class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: 300,
      height: 150,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // showing 1st card
            Container(
              decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22)),
                  ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Sleep Meditation",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
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
