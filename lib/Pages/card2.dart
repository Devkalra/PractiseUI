import 'package:flutter/material.dart';
import 'package:practice_ui/utilis/layout.dart';

class MiniCard extends StatelessWidget {
  const MiniCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: 140,
      height: 130,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
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
                          "assets/images/backgroun2.png"),
                    )
                ),
                //padding: EdgeInsets.all(16),
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Text(
                          "Calming\nSound",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: const [
                      SizedBox(
                        width: 60,
                        child:
                        Icon(Icons.headphones,
                          color: Colors.white,),
                      ),
                    ],
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
