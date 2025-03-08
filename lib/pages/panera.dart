import 'package:flutter/material.dart';
import 'bagel.dart';
import 'rightHallway.dart';
import 'checklist.dart';
import 'globalboolean.dart';
import 'pftMap.dart';
import 'gamefinpg.dart';

class Panera extends StatelessWidget {
  const Panera({super.key});

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
        title: const Center(child: Text('PANERA')),
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
                    'Your first stop is Panera',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Panera is very important for LSU's engineering students to be successful.",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Caffeine and mac n cheese are essential for getting through life.",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/paneratablet.png', width: 600),
                ),
                Text(
                  'Order yourself a bagel!',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      GlobalState().isBagelOrdered = true;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const bagel()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text(
                      "BAGEL",
                      style: TextStyle(color: Colors.white),
                    ),
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
                  Text("⬅️ Back to Bagel", style: TextStyle(color: Colors.white)),
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
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              GlobalState().isBagelOrdered = true;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const bagel()),
              );
            },
            child: const Icon(Icons.arrow_back),
          ),
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
          const SizedBox(width: 20),
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
              Navigator.pop(context);
            },
            child: const Icon(Icons.refresh),
          ),
        ],
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
