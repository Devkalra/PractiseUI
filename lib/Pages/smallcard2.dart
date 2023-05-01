import 'package:flutter/material.dart';
import 'package:practice_ui/utilis/layout.dart';

class Small_Card extends StatelessWidget {
  const Small_Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: 95,
      height: 55,
      child: Column(
        children: [
          Container(
            //height: 100,
            //width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff1C2031),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: const [
                    Center(
                      child: Text(
                        "Sleep",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ]))
        ],
      ),
    );
  }
}
