import 'package:flutter/material.dart';

class intro_screen extends StatelessWidget {
  const intro_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset('assets/images/kindpng_7336354 1.png'),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 400,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group 1.png',
                      width: 66,
                      height: 66,
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        "     Get your groceries \n delivered to your home",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff06161C)),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                        "the best  delivery app in your town for\n          deliver your daily grocery",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text(
                        "shope now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset("assets/images/pic 2.png"),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                width: 540,
                child: Image.asset(
                  'assets/images/pic 3.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
