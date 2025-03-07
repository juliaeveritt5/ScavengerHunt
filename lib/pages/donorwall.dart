import 'package:flutter/material.dart';
import 'package:scavenger_hunt/pages/centerofEng.dart';
import 'checklist.dart';
import 'globalboolean.dart';
import 'stairarea.dart';
import 'pftMap.dart';

class donorwall extends StatelessWidget {
  const donorwall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Donor Wall',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Welcome to the donor wall",
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              // Centering the image
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/donorwall.png', width: 600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Who is a donor here?',
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
                        "Apple",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        GlobalState().donorwall = true;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Stairarea()),
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
                        "Chevron",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10), // Adding spacing between buttons
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
                        "Google",
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
                  MaterialPageRoute(builder: (context) => const centerofEng()),
                );
              },
              child: const Icon(Icons.arrow_back),
            ),
            // const SizedBox(width: 10),
            // FloatingActionButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const basf()),
            //     );
            //   },
            //   child: const Icon(Icons.arrow_forward),
            // ),
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
}
