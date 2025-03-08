import 'package:flutter/material.dart';
import 'package:scavenger_hunt/pages/gamefinpg.dart';
import 'checklist.dart';
import 'globalboolean.dart';
import 'pftMap.dart';
import 'stairarea.dart';

class chairroom extends StatelessWidget {
  const chairroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('This is the glorious chair room ')),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "You have found one of the epic spinny chairs",
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              // Centering the image
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/coolchair.png', width: 600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Now go sit in the chair',
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
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        GlobalState().spinnychair = true;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const gamefinpg()
                          ),
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
                        "I sat in it",
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
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min, // Prevents excess spacing
        children: [
          FloatingActionButton(
            onPressed: () {
              GlobalState().spinnychair = true; //fact about cool chair
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Stairarea()),
                );
            },
            child: const Icon(Icons.arrow_back),
          ),
          SizedBox(width: 10),
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
    );
  }
}
