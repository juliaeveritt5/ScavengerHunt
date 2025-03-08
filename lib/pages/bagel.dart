import 'package:flutter/material.dart';
import 'globalboolean.dart';
import 'rightHallway.dart';
import 'gamefinpg.dart';

class bagel extends StatelessWidget {
  const bagel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'YOU DID IT',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.network(
                'https://marvel-b1-cdn.bc0a.com/f00000000290274/www.lsu.edu/eng/images/hero_images/supporthero.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Congratulations, here is your bagel',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/BAGELtRIAL.png', width: 600),
                ),
                Text(
                  'This task has been checked off on your list.',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Click the arrow to continue exploring!',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GlobalState().isBagelOrdered = true;
          if (isListComplete()) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const gamefinpg()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RightHallway()),
            );
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  bool isListComplete() {
    return GlobalState().isBagelOrdered &&
        GlobalState().spinnychair &&
        GlobalState().basf &&
        GlobalState().donorwall &&
        GlobalState().numChairs &&
        GlobalState().staircase &&
        GlobalState().centerofeng;
  }
}
