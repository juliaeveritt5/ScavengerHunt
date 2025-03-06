import 'package:flutter/material.dart';
import 'bagel.dart';
import 'rightHallway.dart';
import 'commonArea.dart';
import 'checklist.dart';
import 'basf.dart';

class rightHallway extends StatelessWidget {
  const rightHallway({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('This is the right hallway')),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/rightHallway.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'BACK GIVES COMMON AREA FORWARD GIVES BASF LAB',
              style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min, // Prevents excess spacing
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
                MaterialPageRoute(builder: (context) => const basf()),
              );
            },
            child: const Icon(Icons.arrow_forward),
          ),
          const SizedBox(width: 10), // Space between buttons
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
