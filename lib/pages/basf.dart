import 'package:flutter/material.dart';
import 'package:scavenger_hunt/pages/donorwall.dart';
import 'checklist.dart';
import 'globalboolean.dart';
import 'pftMap.dart';
import 'rightHallway.dart';
import 'gamefinpg.dart';

class basf extends StatelessWidget {
  const basf({super.key});

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
          'Mystery Lab',
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
                    "Welcome to the sustainable living lab",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  // Centering the image
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/basflab.png', width: 600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Who sponsors this lab?',
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
                            "FAST",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            GlobalState().basf = true;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const donorwall()),
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
                            "BASF",
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
                            "NASA",
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
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("LEGEND:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text("⬅️ Back to Donor Wall", style: TextStyle(color: Colors.white)),
                  Text("⬇️ Right Hallway", style: TextStyle(color: Colors.white)),
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
                  MaterialPageRoute(builder: (context) => const donorwall()),
                );
              },
              child: const Icon(Icons.arrow_back),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RightHallway()),
                );
              },
              child: const Icon(Icons.arrow_downward),
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
