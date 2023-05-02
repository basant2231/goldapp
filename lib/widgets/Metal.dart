
import 'package:flutter/material.dart';

class Metal extends StatelessWidget {
  const Metal({
    Key? key,
    required this.goldI,
    required this.text,
    required this.image,
    required this.maincolor,
    required this.shadowcolor,
  }) : super(key: key);

  final int? goldI;
  final String text;
  final String image;
final Color maincolor;
final Color shadowcolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width / 2.5,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
              color: maincolor,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 8,
              shadows: [
                BoxShadow(
                    color: shadowcolor,
                    offset: const Offset(
                      2,
                      2,
                    ),
                    blurRadius: 5)
              ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(goldI != null?
          '  $goldI💲':"LOADING...",
          style: TextStyle(
            color: maincolor,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 16,
          ),
        ),
      ],
    );
  }
}
