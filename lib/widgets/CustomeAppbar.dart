
  import 'package:flutter/material.dart';

AppBar CustomAppbar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'TODAY',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  shadows: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          2,
                          2,
                        ),
                        blurRadius: 5)
                  ]),
            ),
            Text(
              ' PRICE',
              style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  shadows: [
                    BoxShadow(
                        color: Colors.yellow[300]!,
                        offset: const Offset(
                          0,
                          0,
                        ),
                        blurRadius: 5)
                  ]),
            ),
          ],
        ),
      ),
    );
  }

