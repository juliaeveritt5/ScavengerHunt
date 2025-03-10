import 'package:flutter/material.dart';
import 'commonArea.dart';
import 'checklist.dart';
import 'globalboolean.dart';
import 'centerofeng.dart';
import 'chairroom.dart';
import 'pftMap.dart';
import 'gamefinpg.dart';

class Stairarea extends StatelessWidget {
  const Stairarea({super.key});

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
        title: const Center(child: Text('You have found the big stairs.')),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  // Centering the image
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/bigstair.png', width: 600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'How many big stairs are there?',
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text(
                            "20",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            GlobalState().staircase = true;
                            if (isListComplete()) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const gamefinpg()),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const centerofEng()),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text(
                            "11",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text(
                            "7",
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
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("LEGEND:",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text("⬅️ To Commons Area",
                      style: TextStyle(color: Colors.white)),
                  Text("➡️ Center of Engineering",
                      style: TextStyle(color: Colors.white)),
                  Text("➡️ To Chair Room",
                      style: TextStyle(color: Colors.white)),
                  Text("📝 Checklist", style: TextStyle(color: Colors.white)),
                  Text("🗺️ Map Page", style: TextStyle(color: Colors.white)),
                  Text("🔄 Refresh Page",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
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
                  MaterialPageRoute(builder: (context) => const commonArea()),
                );
              },
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const centerofEng()),
                );
              },
              child: const Icon(Icons.arrow_forward),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapPage()),
                );
              },
              child: const Icon(Icons.map),
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
