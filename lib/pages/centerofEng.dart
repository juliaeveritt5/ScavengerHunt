import 'package:flutter/material.dart';
import 'checklist.dart';
import 'globalboolean.dart';
import 'donorwall.dart';
import 'chairroom.dart';
import 'stairarea.dart';
import 'crane.dart';
import 'gamefinpg.dart';

class centerofEng extends StatelessWidget {
  const centerofEng({super.key});

  @override
  Widget build(BuildContext context) {
    if (isListComplete()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const gamefinpg()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('This is the Center of Engineering')),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Welcome to the Center of Engineering",
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/centerofeng1.png', width: 600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Try to find the cool crane...',
                style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centering the buttons
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        GlobalState().centerofeng = true;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Crane()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text(
                        "Found It",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Stairarea()),
              );
            },
            child: const Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const chairroom()),
              );
            },
            child: const Icon(Icons.arrow_forward),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const donorwall()),
              );
            },
            child: const Icon(Icons.arrow_forward),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Checklist()),
              );
            },
            child: const Icon(Icons.smart_button),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              Navigator.pop(context); // Go back to the previous page
            },
            child: const Icon(Icons.refresh),
          ),
        ],
        ),
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
