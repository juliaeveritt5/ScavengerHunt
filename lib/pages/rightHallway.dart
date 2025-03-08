import 'package:flutter/material.dart';
import 'commonArea.dart';
import 'checklist.dart';
import 'basf.dart';
import 'pftMap.dart';
import 'gamefinpg.dart';
import 'globalboolean.dart';

class RightHallway extends StatelessWidget {
  const RightHallway({super.key});

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
          'RIGHT HALLWAY',
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
                    "Down this hallway will lead to the big hallway",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/righthallway.png', width: 600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'BACK BUTTON GIVES COMMON AREA. FORWARD BUTTON GIVES BASF LAB',
                    style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          // Legend 
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
                  Text("⬅️ Common Area", style: TextStyle(color: Colors.white)),
                  Text("⬆️ BASF Lab", style: TextStyle(color: Colors.white)),
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
                  MaterialPageRoute(builder: (context) => const commonArea()),
                );
              },
              child: const Icon(Icons.arrow_back),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const basf()),
                );
              },
              child: const Icon(Icons.arrow_upward),
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
