import 'package:flutter/material.dart';
import 'package:practice_ui/utilis/layout.dart';

class MiniCard extends StatelessWidget {
  const MiniCard ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: 150,
      height: 100,
      child: Column(
        children: [
          Container(
            height: 100,
            //width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Colors.cyan,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/background2.png"),
              )
            ),
          )
        ],
      ),
    );
  }
}
