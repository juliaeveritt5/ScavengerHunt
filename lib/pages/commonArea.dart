import 'package:flutter/material.dart';
import 'checklist.dart';
import 'rightHallway.dart';
import 'flier.dart';
import 'stairarea.dart';
import 'pftMap.dart';
import 'globalboolean.dart';
import 'gamefinpg.dart';

class commonArea extends StatelessWidget {
  const commonArea({super.key});

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
        title: const Text(
          'COMMON AREA',
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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Welcome to the commons area",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  // Centering the image
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/commons.png', width: 600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'How many tables are in the commons?',
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const flier()),
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
                            "12",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Adding spacing between buttons
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
                            "14",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Adding spacing between buttons
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
                            "109",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text(
                    'You are in the commons, I wonder what else you could find here',
                    style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                ),
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
                  Text("LEGEND:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text("⬆️ To Stair Area", style: TextStyle(color: Colors.white)),
                  Text("➡️ Right Hallway", style: TextStyle(color: Colors.white)),
                  Text("📝 Checklist", style: TextStyle(color: Colors.white)),
                  Text("🗺️ Map Page", style: TextStyle(color: Colors.white)),
                  Text("🔄 Refresh Page", style: TextStyle(color: Colors.white)),
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
                  MaterialPageRoute(builder: (context) => const Stairarea()),
                );
              },
              child: const Icon(Icons.arrow_upward),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RightHallway()),
                );
              },
              child: const Icon(Icons.arrow_forward),
            ),
            const SizedBox(width: 10),
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
            //Map Page
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
