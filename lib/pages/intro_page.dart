import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 60, right: 80, top: 12, bottom: 20),
                  child: Stack(
                    children: [
                      Image.asset('lib/images/one.png'),
                      Positioned(
                          bottom: -10,
                          right: 10,
                          child: IconButton(
                            icon: const Icon(Icons.add_a_photo_outlined),
                            onPressed: () {},
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'We deliver groceries at your doorstep',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.alatsi(
                      textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'FRESH ITEM EVERYDAY',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.athiti(
                      textStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ));
                },
                child: const Text('Let Start`s')),
          ],
        ),
      ),
    );
  }

  Widget _circuler() {
    return Container(
      height: 20,
      width: 20,
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.green,
        ),
      ),
    );
  }
}
//               SizedBox(child:  Image.asset('lib/images/one.png')
