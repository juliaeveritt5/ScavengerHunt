import 'package:flutter/material.dart';

class Option1B extends StatelessWidget {
  const Option1B({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('This is option 1B')),
      ),
      backgroundColor: const Color.fromARGB(255, 69, 11, 136),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centers content vertically
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                'assets/dawg.jpg',
                width: 300,
                height: 300,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Text(
                'THIS IS PAGE 1B',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
