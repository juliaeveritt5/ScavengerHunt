import 'package:flutter/material.dart';
import 'bagel.dart';
import 'rightHallway.dart';
import 'commonArea.dart';
import 'checklist.dart';
import 'globalboolean.dart';
import 'donorwall.dart';
import 'centerofeng.dart';
import 'chairroom.dart';


class chairroom extends StatelessWidget {
  const chairroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('This is the glorious chair room ')),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://marvel-b1-cdn.bc0a.com/f00000000290274/www.lsu.edu/eng/images/hero_images/supporthero.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'ADD 3 Buttons for who sponsered the lab - first one should be basf and should update checklist',
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
               GlobalState().spinnychair = true; //fact about cool chair
            },
            child: const Icon(Icons.star),
          ),

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
